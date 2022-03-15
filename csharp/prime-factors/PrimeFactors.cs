using System.Collections.Generic;

public static class PrimeFactors
{
    public static long[] Factors(long start)
    {
        var fact = new List<long>();
        var divisor = 2;

        while (start > 1)
        {
            while (start % divisor == 0)
            {
                fact.Add(divisor);
                start /= divisor;
            }

            divisor += 1;

        }

        return fact.ToArray();

    }
}
