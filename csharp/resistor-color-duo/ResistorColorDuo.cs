using System;
using System.Collections.Generic;
using System.Linq;

public static class ResistorColorDuo
{
    public static Dictionary<string, string> BANDS = new()
    {
        {"black", "0"},
        {"brown", "1"},
        {"red", "2"},
        {"orange", "3"},
        {"yellow", "4"},
        {"green", "5"},
        {"blue", "6"},
        {"violet", "7"},
        {"grey", "8"},
        {"white", "9"}
    };
    public static int Value(string[] colors) => int.Parse(string.Join("", colors.Take(2).Select(c => BANDS[c])));
}
