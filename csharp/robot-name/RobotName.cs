using System;
using System.Collections.Generic;


public class Robot
{
    public Robot() => Name = gen();

    private static Dictionary<string, int> dict = new Dictionary<string, int>();
    public string Name { get; private set; }

    private static string gen()
    {
        while (true)
        {
            var random = new Random();
            var a = (char)('A' + random.Next() % 26);
            var b = (char)('A' + random.Next() % 26);
            var num1 = random.Next() % 10;
            var num2 = random.Next() % 10;
            var num3 = random.Next() % 10;
            var s = $"{a}{b}{num1}{num2}{num3}";

            if (dict.ContainsKey(s))
            {
                continue;
            }

            dict[s] = 1;
            return s;
        }
    }

    public void Reset()
    {
        Name = gen();
    }
}