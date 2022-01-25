using System.Linq;
using System.Text.RegularExpressions;

public static class Identifier
{
    private static bool isGreekLc(char c) => 'α' <= c && c <= 'ω';

    public static string Clean(string identifier) =>
        Regex.Replace(identifier, @"-(\D)", m => m.Groups[1].Value.ToUpper()).Select(c =>
            c switch
            {
                ' ' => "_",
                '\0' => "CTRL",
                _ when isGreekLc(c) => "",
                _ when char.IsLetter(c) => $"{c}",
                _ => ""
            }
        ).Aggregate("", (acc, n) => acc + n);
}
