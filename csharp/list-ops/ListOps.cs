using System;
using System.Collections.Generic;
using System.Linq;

public static class ListOps
{
    public static int Length<T>(List<T> input) => input.Count;

    public static List<T> Reverse<T>(List<T> input)
    {
        List<T> r = new List<T>();
        for (int i = Length(input) - 1; i >= 0; i--) r.Add(input[i]);

        return r;
    }

    public static List<TOut> Map<TIn, TOut>(List<TIn> input, Func<TIn, TOut> map) =>
        input.Aggregate(new List<TOut>(), (acc, n) =>
        {
            acc.Add(map(n));
            return acc;
        });

    public static List<T> Filter<T>(List<T> input, Func<T, bool> predicate) =>
        input.Aggregate(new List<T>(), (acc, n) =>
        {
            if (predicate(n))
            {
                acc.Add((n));
            }

            return acc;
        });

    public static TOut Foldl<TIn, TOut>(List<TIn> input, TOut start, Func<TOut, TIn, TOut> func)
    {
        var acc = start;
        foreach (var n in input) acc = func(acc, n);

        return acc;
    }

    public static TOut Foldr<TIn, TOut>(List<TIn> input, TOut start, Func<TIn, TOut, TOut> func)
    {
        var acc = start;
        for (var i = input.Count - 1; i >= 0; i--) acc = func(input[i], acc);
        return acc;
    }

    public static List<T> Concat<T>(List<List<T>> input) => input.Aggregate(new List<T>(), (acc, n) => Append(acc, n));

    public static List<T> Append<T>(List<T> left, List<T> right)
    {
        List<T> r = new List<T>
        {
            Capacity = left.Count + right.Count
        };

        foreach (var n in left) r.Add(n);
        foreach (var n in right) r.Add(n);

        return r;
    }
}
