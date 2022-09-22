using System.Linq;
using System.Text.RegularExpressions;

public static class Luhn
{
    private static readonly Regex WsRegex = new(@"\s");

    public static bool IsValid(string number)
    {
        var nows = WsRegex.Replace(number, "");

        if (!nows.All(char.IsDigit) || nows.Length < 2)
            return false;
        return nows
            .Reverse()
            .Where(char.IsDigit)
            .Select(c => (int)char.GetNumericValue(c))
            .Select((n, i) => ((i % 2) == 0) ? n : n * 2)
            .Select(n => n > 9 ? n - 9 : n)
            .Sum() % 10 == 0;
    }
}
