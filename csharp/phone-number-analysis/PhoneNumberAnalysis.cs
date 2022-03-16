using System;
using System.Text.RegularExpressions;

public static class PhoneNumber
{
    public static (bool IsNewYork, bool IsFake, string LocalNumber) Analyze(string phoneNumber)
    {
        var match = Regex.Match(phoneNumber, @"^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$");

        return (match.Groups[2].ToString() == "212", match
            .Groups[3].ToString() == "555", match.Groups[4].ToString());

    }

    public static bool IsFake((bool IsNewYork, bool IsFake, string LocalNumber) phoneNumberInfo) => phoneNumberInfo.IsFake;
}
