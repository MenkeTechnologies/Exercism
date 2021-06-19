using System;

public static class RotationalCipher
{
    public static string Rotate(string text, int shiftKey)
    {
        string res = "";
        foreach (var c in text.ToCharArray())
        {
            if (char.IsLetter(c))
            {
                if (char.IsUpper(c))
                {
                    var offset = (c - 'A' + shiftKey) % 26;
                    res += (char)('A' + offset);
                }
                else
                {
                    var offset = (c - 'a' + shiftKey) % 26;
                    res += (char)('a' + offset);
                }
            }
            else
            {
                res += c;
            }
        }

        return res;
    }
}