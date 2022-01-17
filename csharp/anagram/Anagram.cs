using System;
using System.Linq;

public class Anagram
{
    private readonly String _lc;
    private readonly char[] _sort;

    public Anagram(string baseWord)
    {
        _lc = baseWord.ToLower();
        _sort = _lc.OrderBy(c => c).ToArray();
    }

    public string[] FindAnagrams(string[] potentialMatches) =>
        potentialMatches.ToList().FindAll(w =>
            w.ToLower().OrderBy(c => c).ToArray().SequenceEqual(_sort)
            && !w.ToLower().Equals(_lc)).ToArray();
}
