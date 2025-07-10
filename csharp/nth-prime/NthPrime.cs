using System;
using System.Collections.Generic;
using System.Linq;

public static class NthPrime
{
    public static int Prime(int nth)
    {
        if (nth < 1) throw new ArgumentOutOfRangeException();
        var primes = new List<int> { 2 };
        var curr = 3;
        while (primes.Count < nth)
        {
            if (primes.All(n => curr % n != 0))
                primes.Add(curr);
            curr += 2;
        }

        return primes.Last();
    }
}
