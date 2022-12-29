using System;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Linq;

public class LogParser
{
    public bool IsValidLine(string s) => Regex.IsMatch(s, validLineRegexPattern);
    public string[] SplitLogLine(string s) => Regex.Split(s, splitLineRegexPattern);

    public int CountQuotedPasswords(string s) =>
        Regex.Matches(s, quotedPasswordRegexPattern, RegexOptions.IgnoreCase).Count;

    public string RemoveEndOfLineText(string s) => Regex.Replace(s, endOfLineRegexPattern, string.Empty);

    public string[] ListLinesWithPasswords(string[] lines) =>
        lines.Select(line =>
        {
            var passwordMatch = Regex.Match(line, weakPasswordRegexPattern, RegexOptions.IgnoreCase);
            return passwordMatch == Match.Empty ? $"--------: {line}" : $"{passwordMatch.Value}: {line}";
        }).ToArray();

    private const string validLineRegexPattern = @"^\[(TRC|DBG|INF|WRN|ERR|FTL)\]";
    private const string splitLineRegexPattern = @"<[\^*=-]+>";
    private const string quotedPasswordRegexPattern = @""".*password.*""";
    private const string endOfLineRegexPattern = @"end-of-line\d+";
    private const string weakPasswordRegexPattern = @"password\w+";
}
