using System;
using System.Linq;

public static class Grains
{
    public static ulong Square(int n)
    {
        if (n is <= 0 or > 64)
        {
            throw new ArgumentOutOfRangeException();
        }

        return 1UL << n - 1;
    }

    public static ulong Total() => Enumerable.Range(1, 64).Select(Square).Aggregate(0UL, (acc, n) => acc + n);
}
