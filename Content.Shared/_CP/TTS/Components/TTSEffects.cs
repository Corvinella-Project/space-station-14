namespace Content.Shared._CP.TTS;

[Flags]
// ReSharper disable once InconsistentNaming
public enum TTSEffects : uint
{
    Default = 0,
    Whisper = 1,
    Radio = 1 << 1,
    Echo = 1 << 2,
    Announce = 1 << 3,
    Robotic = 1 << 4,
    Mask = 1 << 5,
}
