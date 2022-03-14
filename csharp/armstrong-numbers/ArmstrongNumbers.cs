using System;
using System.Linq;

public static class ArmstrongNumbers
{
    public static bool IsArmstrongNumber(int number)
    {
        var ary = number.ToString().ToCharArray();
        return number == (int)ary.Select(n => Math.Pow(char.GetNumericValue(n), ary.Length)).Sum();
    }
}
