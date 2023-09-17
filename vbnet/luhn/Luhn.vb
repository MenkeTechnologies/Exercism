Imports System
Imports System.Linq

Public Module Luhn
    Public Function IsValid(ByVal number As String) As Boolean
        dim nows = number.Replace(" ", "")
        If Not nows.All(Function(c) Char.IsDigit(c)) Then Return False
        If nows.Length < 2 Then Return False

        Return nows.Reverse().Select(Function(c) CInt(Char.GetNumericValue(c))) _
            .Select(Function(n, i) If(((i Mod 2) = 0), n, n * 2)) _
            .Select(Function(n) If(n > 9, n - 9, n)).Sum() Mod 10 = 0
    End Function
End Module

