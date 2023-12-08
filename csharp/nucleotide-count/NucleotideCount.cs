using System;
using System.Collections.Generic;
using System.Linq;

public static class NucleotideCount
{
    public static IDictionary<char, int> Count(string sequence)
    {
        var map = new Dictionary<char, int> { { 'A', 0 }, { 'G', 0 }, { 'C', 0 }, { 'T', 0 } };
        return sequence.Aggregate(map, (acc, c) =>
        {
            if (!acc.ContainsKey(c)) { throw new ArgumentException("invalid char"); }
            ++acc[c];
            return acc;
        });
    }
}
