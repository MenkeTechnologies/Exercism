using System;
using System.Collections.Generic;

public static class NucleotideCount
{
    public static IDictionary<char, int> Count(string sequence)
    {
        IDictionary<char, int> map = new Dictionary<char, int>();
        map['A'] = 0;
        map['C'] = 0;
        map['G'] = 0;
        map['T'] = 0;

        foreach (var ch in sequence.ToCharArray())
        {
            if (map.ContainsKey(ch))
            {
                ++map[ch];
            }
            else
            {
                throw new ArgumentException($"invalid char {ch}");
            }
        }

        return map;
    }
}