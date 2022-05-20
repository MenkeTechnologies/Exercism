using System.Linq;

public static class LogAnalysis
{
    public static string SubstringAfter(this string s, string d) => s.Split(d).Last();
    public static string SubstringBetween(this string s, string c1, string c2) => s.Split(c2).First().Split(c1).Last();
    public static string Message(this string s) => s.SubstringAfter(": ");
    public static string LogLevel(this string s) => s.SubstringBetween("[", "]");
}
