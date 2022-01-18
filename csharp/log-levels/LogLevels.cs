using System;
using System.Text.RegularExpressions;

static class LogLine
{
    private static string REGEX = @"\[(.*)\]:\s+(.*\S)\s*";
    public static string Message(string logLine) => Regex.Match(logLine, REGEX).Groups[2].Value;

    public static string LogLevel(string logLine) => Regex.Match(logLine, REGEX).Groups[1].Value.ToLower();

    public static string Reformat(string logLine) => $"{Message(logLine)} ({LogLevel(logLine)})";
}
