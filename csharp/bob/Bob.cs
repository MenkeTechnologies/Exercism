using System;
using System.Text.RegularExpressions;

public static class Bob
{
    public static string Response(string statement)
    {
        var input = Regex.Replace(statement, @"\s+", "");

        if (input.Length == 0)
        {
            return "Fine. Be that way!";
        }

        if (Regex.IsMatch(input, @"[A-Z]+") && !Regex.IsMatch(input, @"[a-z]+"))
        {
            if (Regex.IsMatch(input, @"\?$"))
            {
                return "Calm down, I know what I'm doing!";
            }

            return "Whoa, chill out!";
        }

        if (Regex.IsMatch(input, @"\?$"))
        {
            return "Sure.";
        }

        return "Whatever.";
    }
}
