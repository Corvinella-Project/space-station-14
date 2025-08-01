﻿using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading;
using System.Threading.Tasks;
using Content.Shared._CP.CCVars;
using Content.Shared._CP.TTS;
using Prometheus;
using Robust.Shared.Configuration;

namespace Content.Server._CP.TTS;
// ReSharper disable once InconsistentNaming
public sealed class TTSManager
{
    private static readonly Histogram RequestTimings = Metrics.CreateHistogram(
        "tts_req_timings",
        "Timings of TTS API requests",
        new HistogramConfiguration()
        {
            LabelNames = ["type"],
            Buckets = Histogram.ExponentialBuckets(.1, 1.5, 10),
        });

    private static readonly Counter WantedCount = Metrics.CreateCounter(
        "tts_wanted_count",
        "Amount of wanted TTS audio.");

    private static readonly Counter ReusedCount = Metrics.CreateCounter(
        "tts_reused_count",
        "Amount of reused TTS audio from cache.");

    [Dependency] private readonly IConfigurationManager _cfg = default!;

    private readonly HttpClient _httpClient = new();

    private ISawmill _sawmill = default!;

    private readonly Dictionary<string, byte[]> _cache = new();
    private readonly Queue<string> _cacheKeysSeq = [];

    private int _maxCachedCount;
    private string _apiUrl = string.Empty;
    private string _apiToken = string.Empty;
    private float _timeout;

    public void Initialize()
    {
        _sawmill = Logger.GetSawmill("TTS");

        _cfg.OnValueChanged(CPCCVars.TTSApiUrl, v => _apiUrl = v, true);
        _cfg.OnValueChanged(CPCCVars.TTSApiToken, v => _apiToken = v, true);
        _cfg.OnValueChanged(CPCCVars.TTSMaxCacheCount, v => _maxCachedCount = v, true);
        _cfg.OnValueChanged(CPCCVars.TTSTimeout, v => _timeout = v, true);
    }

    public bool TryGetAudio(string cacheKey, out byte[]? audio)
    {
        return _cache.TryGetValue(cacheKey, out audio);
    }

    /// <summary>
    /// Generates audio with passed text by API.
    /// </summary>
    /// <param name="speaker">Identifier of speaker.</param>
    /// <param name="text">SSML formatted text.</param>
    /// <param name="effects">Generation additional effects.</param>
    /// <returns>OGG audio bytes or null if failed.</returns>
    public async Task<(byte[]? audio, string? cacheKey)> ConvertTextToSpeech(string speaker, string text, TTSEffects effects)
    {
        WantedCount.Inc();
        var cacheKey = GenerateCacheKey(speaker, text, effects);
        if (_cache.TryGetValue(cacheKey, out var data))
        {
            ReusedCount.Inc();
            _sawmill.Verbose($"Use cached sound for '{text}' speech by '{speaker}' speaker.");
            return (data, cacheKey);
        }

        _sawmill.Verbose($"Generate new audio for '{text}' speech by '{speaker}' speaker.");

        var body = new GenerateVoiceRequest
        {
            ApiToken = _apiToken,
            Text = text,
            Speaker = speaker,
            Effects = effects,
        };

        var reqTime = DateTime.UtcNow;
        try
        {
            var cts = new CancellationTokenSource(TimeSpan.FromSeconds(_timeout));
            var response = await _httpClient.PostAsJsonAsync(_apiUrl, body, cts.Token);
            if (!response.IsSuccessStatusCode)
            {
                if (response.StatusCode == HttpStatusCode.TooManyRequests)
                {
                    _sawmill.Warning("TTS request was rate limited.");
                    return (null, null);
                }

                _sawmill.Error($"TTS request returned bad status code: {response.StatusCode}.");
                return (null, null);
            }

            var json = await response.Content.ReadFromJsonAsync<GenerateVoiceResponse>(cancellationToken: cts.Token);
            if (json.Results.Count == 0)
            {
                _sawmill.Error($"TTS API returned empty results for '{text}'");
                return (null, null);
            }

            var firstResult = json.Results[0];
            if (string.IsNullOrEmpty(firstResult.Audio))
            {
                _sawmill.Error($"TTS API returned empty audio data for '{text}'");
                return (null, null);
            }

            var soundData = Convert.FromBase64String(firstResult.Audio);

            _cache.Add(cacheKey, soundData);
            _cacheKeysSeq.Enqueue(cacheKey);
            if (_cache.Count > _maxCachedCount)
            {
                var key = _cacheKeysSeq.Dequeue();
                _cache.Remove(key);
            }

            _sawmill.Debug($"Generated new audio for '{text}' speech by '{speaker}' speaker ({soundData.Length} bytes).");
            RequestTimings.WithLabels("Success").Observe((DateTime.UtcNow - reqTime).TotalSeconds);

            return (soundData, cacheKey);
        }
        catch (TaskCanceledException)
        {
            RequestTimings.WithLabels("Timeout").Observe((DateTime.UtcNow - reqTime).TotalSeconds);
            _sawmill.Error($"Timeout of request generation new audio for '{text}' speech by '{speaker}' speaker.");
            return (null, null);
        }
        catch (Exception e)
        {
            RequestTimings.WithLabels("Error").Observe((DateTime.UtcNow - reqTime).TotalSeconds);
            _sawmill.Error($"Failed of request generation new sound for '{text}' speech by '{speaker}' speaker with '{effects}' effects.\n{e}");
            return (null, null);
        }
    }

    public void ResetCache()
    {
        _cache.Clear();
        _cacheKeysSeq.Clear();
    }

    private string GenerateCacheKey(string speaker, string text, TTSEffects effects)
    {
        var key = $"{speaker}/{text}/{effects}";
        var keyData = Encoding.UTF8.GetBytes(key);
        var bytes = System.Security.Cryptography.SHA256.HashData(keyData);
        return Convert.ToHexString(bytes);
    }

    private struct GenerateVoiceRequest
    {
        public GenerateVoiceRequest()
        {
        }

        [JsonPropertyName("api_token")]
        public string ApiToken { get; set; } = "";

        [JsonPropertyName("text")]
        public string Text { get; set; } = "";

        [JsonPropertyName("speaker")]
        public string Speaker { get; set; } = "";


        [JsonPropertyName("effects")]
        public TTSEffects Effects { get; set; } = TTSEffects.Default;

        [JsonPropertyName("ssml")]
        public bool SSML { get; private set; } = true;

        [JsonPropertyName("word_ts")]
        public bool WordTS { get; private set; } = false;

        [JsonPropertyName("put_accent")]
        public bool PutAccent { get; private set; } = true;

        [JsonPropertyName("put_yo")]
        public bool PutYo { get; private set; } = false;

        [JsonPropertyName("sample_rate")]
        public int SampleRate { get; private set; } = 24000;

        [JsonPropertyName("format")]
        public string Format { get; private set; } = "ogg";
    }

    private struct GenerateVoiceResponse
    {
        [JsonPropertyName("results")]
        public List<VoiceResult> Results { get; set; }

        [JsonPropertyName("original_sha1")]
        public string Hash { get; set; }
    }

    private struct VoiceResult
    {
        [JsonPropertyName("audio")]
        public string Audio { get; set; }
    }
}
