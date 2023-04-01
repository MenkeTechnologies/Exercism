using System.Linq;

public static class Proverb
{
    public static string[] Recite(string[] subjects)
        => subjects.Length == 0
            ? subjects
            : Enumerable.Range(0, subjects.Length - 1)
                .Select(i => string.Format($"For want of a {subjects[i]} the {subjects[i + 1]} was lost."))
                .Concat(new[] { $"And all for the want of a {subjects[0]}." }).ToArray();
}
