using System;
using System.Collections.Generic;
using System.Linq;

public static class Etl
{
    public static Dictionary<string, int> Transform(Dictionary<int, string[]> old) =>
        old.Aggregate(new Dictionary<string, int>(), (acc, n) =>
        {
            foreach (var s in n.Value) acc[s.ToLower()] = n.Key;
            return acc;
        });
}
