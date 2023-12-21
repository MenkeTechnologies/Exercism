Imports System.Text.RegularExpressions

Public Module IsbnVerifier
    Private Const IsbnPattern As String = "^\d(-?)\d{3}\1\d{5}\1[\dX]$"

    Public Function IsValid(ByVal number As String) As Boolean
        Return _
            Regex.IsMatch(number, IsbnPattern) AndAlso
            number.Reverse().Where(Function(c) Char.IsLetterOrDigit(c)).Select(
                Function(c) If(c = "X"c, 10, Integer.Parse(c.ToString()))) _
                .Select(Function(x, i) x*(i + 1)).Sum() Mod 11 = 0
    End Function
End Module
