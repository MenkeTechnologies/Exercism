using System;
using System.Linq;

public static class LargestSeriesProduct
{
    public static long GetLargestProduct(string digits, int window) =>
        window < 0 || window > digits.Length || digits.Any(w => !char.IsNumber(w))
            ? throw new ArgumentException()
            : Enumerable.Range(0, digits.Length - window + 1)
                .Select(i => digits.Substring(i, window).Select(c => c - '0').Aggregate(1, (x, y) => x * y)).Max();
}
