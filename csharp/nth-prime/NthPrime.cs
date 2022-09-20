using System;
using System.Collections.Generic;
using System.Linq;

public static class NthPrime
{
    public static int Prime(int nth)
    {
        if (nth < 1) throw new ArgumentOutOfRangeException();
        var primes = new List<int> { 2 };
        var next_odd = 3;
        while (primes.Count < nth)
        {
            if (primes.All(n => next_odd % n != 0))
                primes.Add(next_odd);
            next_odd += 2;
        }

        return primes.Last();
    }
}
