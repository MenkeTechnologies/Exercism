using System.Collections.Generic;
using System.Linq;

public static class SecretHandshake
{
    private static readonly IDictionary<int, string> Orders = new Dictionary<int, string>
    {
        { 1, "wink" },
        { 2, "double blink" },
        { 4, "close your eyes" },
        { 8, "jump" }
    };

    public static string[] Commands(int commandValue)
    {
        var s = Orders.Where(o => (commandValue & o.Key) > 0).Select(o => o.Value);

        return (commandValue & 16) > 0 ? s.Reverse().ToArray() : s.ToArray();
    }
}
