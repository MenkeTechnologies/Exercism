using System.Collections.Generic;
using System.Linq;

public static class Diamond
{
    private static IEnumerable<T> Reflect<T>(this IEnumerable<T> ie) =>
        ie.Concat(ie.Reverse().Skip(1));

    public static string Make(char target)
    {
        int width = target - 'A';
        var lines = Enumerable.Range(0, width + 1).Select(i =>
        {
            char letter = (char)('A' + i);
            string leftHalf = new string(' ', width - i) + letter + new string(' ', i);
            return string.Concat(leftHalf.Reflect());
        });
        return string.Join("\n", lines.Reflect());
    }
}
