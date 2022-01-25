using System;
using System.Collections.Generic;
using System.Linq;

public static class Languages
{
    private static readonly List<String> list = new();
    public static List<string> NewList() => list;

    public static List<string> GetExistingLanguages() => new() { "C#", "Clojure", "Elm" };

    public static List<string> AddLanguage(List<string> languages, string language)
    {
        languages.Add(language);
        return languages;
    }

    public static int CountLanguages(List<string> languages) => languages.Count;

    public static bool HasLanguage(List<string> languages, string language) => languages.Contains(language);

    public static List<string> ReverseList(List<string> languages)
    {
        languages.Reverse();
        return languages;
    }

    public static bool IsExciting(List<string> languages) => languages.Count > 0 &&
                                                             (languages.First() == "C#" || languages[1] == "C#" &&
                                                                 languages.Count is 2 or 3);

    public static List<string> RemoveLanguage(List<string> languages, string language)
    {
        languages.Remove(language);
        return languages;
    }

    public static bool IsUnique(List<string> languages) => languages.GroupBy(n => n).All(g => g.Count() == 1);
}
