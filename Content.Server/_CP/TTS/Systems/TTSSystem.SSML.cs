﻿namespace Content.Server._CP.TTS.Systems;

// ReSharper disable once InconsistentNaming
public sealed partial class TTSSystem
{
    private string ToSsmlText(string text, SoundTraits traits = SoundTraits.None)
    {
        var result = text;
        if (traits.HasFlag(SoundTraits.RateFast))
            result = $"<prosody rate=\"fast\">{result}</prosody>";
        if (traits.HasFlag(SoundTraits.PitchVeryLow))
            result = $"<prosody pitch=\"x-low\">{result}</prosody>";
        return $"<speak>{result}</speak>";
    }

    [Flags]
    private enum SoundTraits : ushort
    {
        None = 0,
        RateFast = 1 << 0,
        PitchVeryLow = 1 << 1,
    }
}
