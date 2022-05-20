using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public static class WordCount
{
    public static IDictionary<string, int> CountWords(string phrase) =>
        Regex.Matches(phrase, @"\b['\w]+\b").Select(m => m.Value)
            .GroupBy(w => w.ToLowerInvariant()).ToDictionary(g => g.Key, g => g.Count());
}
