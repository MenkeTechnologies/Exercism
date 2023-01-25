using System;
using System.Collections.Generic;
using System.Linq;

public static class AllYourBase
{
    public static int[] Rebase(int inputBase, int[] inputDigits, int outputBase)
    {
        List<int> outputDigits = new List<int>();
        if (inputBase < 2 || outputBase < 2 || inputDigits.Any(c => c < 0 || c >= inputBase))
        {
            throw new ArgumentException();
        }

        int sum = inputDigits.Aggregate(0, (acc, n) => acc * inputBase + n);
        if (sum == 0)
        {
            return new[] { 0 };
        }

        while (sum > 0)
        {
            outputDigits.Insert(0, sum % outputBase);
            sum /= outputBase;
        }

        return outputDigits.ToArray();
    }
}
