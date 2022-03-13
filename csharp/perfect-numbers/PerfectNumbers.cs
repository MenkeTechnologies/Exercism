using System.Linq;

public enum Classification
{
    Perfect,
    Abundant,
    Deficient
}

public static class PerfectNumbers
{
    public static Classification Classify(int number)
    {
        var sum = Enumerable.Range(1, number - 1).Where(i => number % i == 0).Sum();
        return sum < number ? Classification.Deficient :
            sum > number ? Classification.Abundant : Classification.Perfect;
    }
}
