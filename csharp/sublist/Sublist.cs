using System;
using System.Collections.Generic;
using System.Linq;

public enum SublistType
{
    Equal,
    Unequal,
    Superlist,
    Sublist
}

public static class Sublist
{
    public static SublistType Classify<T>(List<T> list1, List<T> list2)
        where T : IComparable
    {
        if (list1.SequenceEqual(list2))
            return SublistType.Equal;
        if (Contains(list1, list2))
            return SublistType.Sublist;
        return Contains(list2, list1) ? SublistType.Superlist : SublistType.Unequal;
    }

    private static bool Contains<T>(IReadOnlyCollection<T> list1, IReadOnlyCollection<T> list2) =>
        !list1.Any() ||
        list1.Count <= list2.Count && Enumerable.Range(0, list2.Count - list1.Count + 1)
            .Any(i => list1.SequenceEqual(list2.Skip(i).Take(list1.Count)));
}
