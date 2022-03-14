using System;

public static class Darts
{
    public static int Score(double x, double y) =>
        dist(x, y) switch
        {
            <= 1.0 => 10,
            <= 5.0 => 5,
            <= 10.0 => 1,
            _ => 0
        };

    private static double dist(double x, double y) => Math.Sqrt(Math.Pow(x, 2) + Math.Pow(y, 2));
}
