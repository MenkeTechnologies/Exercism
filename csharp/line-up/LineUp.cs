using System.Text.RegularExpressions;

public static class LineUp
{
    public static string Format(string name, int number)
    {
        string position;
        if (new Regex(@"1[123]$").IsMatch((number.ToString())))
        {
            position = "th";
        }
        else
        {
            position = (number % 10) switch
            {
                1 => "st",
                2 => "nd",
                3 => "rd",
                _ => "th"
            };
        }

        return $"{name}, you are the {number}{position} customer we serve today. Thank you!";
    }
}
