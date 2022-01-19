using System;
using System.Collections.Generic;
using System.Linq;

public static class MatchingBrackets
{
    private static Dictionary<char, char> MAP = new()
    {
        { '{', '}' },
        { '[', ']' },
        { '(', ')' }
    };

    public static bool IsPaired(string input)
    {
        var stk = new Stack<char>();

        return input.ToList().All(c =>
            {
                if (MAP.ContainsKey(c))
                {
                    stk.Push(c);
                }
                else if (MAP.ContainsValue(c))
                {
                    if (stk.Count == 0 || MAP[stk.Pop()] != c)
                    {
                        return false;
                    }
                }

                return true;
            }
        ) && stk.Count == 0;
    }
}
