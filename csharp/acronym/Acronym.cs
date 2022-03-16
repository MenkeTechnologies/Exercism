using System;
using System.Linq;
using System.Text.RegularExpressions;

public static class Acronym
{
    public static string Abbreviate(string phrase) => String.Join("", Regex.Split(phrase.ToUpper(), @"[^A-Z']+").Select(c => c[0]));
}
