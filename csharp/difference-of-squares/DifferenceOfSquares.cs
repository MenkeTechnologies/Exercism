using System;

public static class DifferenceOfSquares
{
    public static int CalculateSquareOfSum(int max)
    {
        int sum = 0;
        for (int i = 1; i <= max; i++)
        {
            sum += i;
        }

        return (int) Math.Pow(sum, 2);
    }

    public static int CalculateSumOfSquares(int max)
    {
        int sum = 0;
        
        for (int i = 1; i <= max; i++)
        {
            sum += (int) Math.Pow(i, 2);
            
        }
        return sum;
    }

    public static int CalculateDifferenceOfSquares(int max)
    {
        return CalculateSquareOfSum(max) - CalculateSumOfSquares(max);
    }
}