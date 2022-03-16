using System;
using System.Text.RegularExpressions;

public class PhoneNumber
{
    public static string Clean(string phoneNumber)
    {
        var match = Regex.Match(phoneNumber, @"^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$");
        if (!match.Success)
        {
            throw new ArgumentException();
        }

        return match.Groups[2].ToString() + match.Groups[3] + match.Groups[4];
    }
}
