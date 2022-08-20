using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class RomanNumeralExtension
{
    private static readonly Dictionary<int, string> RomanNumbers = new()
    {
        { 1000, "M" },
        { 900, "CM" },
        { 500, "D" },
        { 400, "CD" },
        { 100, "C" },
        { 90, "XC" },
        { 50, "L" },
        { 40, "XL" },
        { 10, "X" },
        { 9, "IX" },
        { 5, "V" },
        { 4, "IV" },
        { 1, "I" }
    };

    public static string ToRoman(this int value)
    {
        var result = new StringBuilder(0);
        foreach (var pair in RomanNumbers)
        {
            result.Append(string.Concat(Enumerable.Repeat(pair.Value, value / pair.Key)));
            value %= pair.Key;
        }

        return result.ToString();
    }
}
