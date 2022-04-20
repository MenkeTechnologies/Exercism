using System;
using System.Linq;

public static class AtbashCipher
{
    public static string Encode(string plainValue) =>
        plainValue.Where(char.IsLetterOrDigit)
            .Select(char.ToLower)
            .Select(c => char.IsLetter(c) ? (char)('a' + 'z' - c) : c)
            .SelectMany((c, index) => index > 0 && index % 5 == 0 ? $" {c}" : $"{c}")
            .Aggregate("", (acc, n) => acc + n);

    public static string Decode(string encodedValue) =>
        encodedValue
            .Where(char.IsLetterOrDigit)
            .Select(c => char.IsLetter(c) ? (char)('a' + 'z' - c) : c).Aggregate("", (acc, n) => acc + n);
}
