using System;
using System.Collections.Generic;
using System.Linq;

public static class Triangle
{
    private static bool isValid(double[] ary)
    {
        Array.Sort(ary);
        return ary.All(c => c > 0) && ary[0] + ary[1] >= ary[2];
    }

    public static bool IsScalene(double side1, double side2, double side3)
    {
        var ary = new[] { side1, side2, side3 };
        var set = new HashSet<double>(ary);

        return isValid(ary) && set.Count == 3;
    }


    public static bool IsIsosceles(double side1, double side2, double side3)
    {
        var ary = new[] { side1, side2, side3 };
        var set = new HashSet<double>(ary);

        return isValid(ary) && set.Count <= 2;
    }

    public static bool IsEquilateral(double side1, double side2, double side3)
    {
        var ary = new[] { side1, side2, side3 };
        var set = new HashSet<double>(ary);

        return isValid(ary) && set.Count == 1;
    }
}
