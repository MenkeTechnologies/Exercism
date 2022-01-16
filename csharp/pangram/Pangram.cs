using System.Linq;

public static class Pangram
{
    public static bool IsPangram(string input) =>
        Enumerable.Range('a', 26).All(i => input.ToLower().Contains((char)i));
}
