using System.Collections.Generic;
using System.Linq;

public static class ParallelLetterFrequency
{
    public static Dictionary<char, int> Calculate(IEnumerable<string> texts) =>
        texts
            .AsParallel()
            .SelectMany(text => text.ToLower().Select(c => c))
            .Where(char.IsLetter)
            .GroupBy(c => c)
            .ToDictionary(c => c.Key, c => c.Count());
}
