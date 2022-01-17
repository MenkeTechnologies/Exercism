using System.Linq;

public static class Isogram
{
    public static bool IsIsogram(string word) =>
        word.ToLower().Where(char.IsLetter)
            .GroupBy(c => c).All(c => c.Count() == 1);
}
