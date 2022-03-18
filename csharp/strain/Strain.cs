using System;
using System.Collections.Generic;

public static class Strain
{
    public static IEnumerable<T> Keep<T>(this IEnumerable<T> collection, Func<T, bool> predicate)
    {
        foreach (var n in collection)
        {
            if (predicate(n))
            {
                yield return n;
            }
        }
    }

    public static IEnumerable<T> Discard<T>(this IEnumerable<T> collection, Func<T, bool> predicate)
    {
        foreach (var n in collection)
        {
            if (!predicate(n))
            {
                yield return n;
            }
        }
    }
}
