using System.Linq;
using System.Text.RegularExpressions;

public static class IsbnVerifier
{
    public static bool IsValid(string number)
    {
        if (!Regex.IsMatch(number, @"^\d-?\d{3}-?\d{5}-?[\dX]$"))
        {
            return false;
        }

        return number.ToUpper().Replace("-", "").Reverse()
            .Select((d, i) => d == 'X' ? 10 : (d - '0') * (i + 1)).Sum() % 11 == 0;
    }
}
