using System;

public static class ResistorColorTrio
{
    private enum Colors
    {
        black, brown, red, orange, yellow, green, blue, violet, grey, white
    }

    public static string Label(string[] colors)
    {
        var output = (Value(colors[0]) * 10 + Value(colors[1])) * Math.Pow(10, Value(colors[2]));
        return output < 1000 ? $"{output} ohms" : $"{output / 1000} kiloohms";
    }

    private static double Value(string color) => (double)Enum.Parse<Colors>(color);
}
