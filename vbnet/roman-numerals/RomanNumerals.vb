Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Runtime.CompilerServices

Public Module RomanNumeralExtension
    Private dict As New Dictionary(Of Integer, String) From {
        {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"}, {100, "C"}, {90, "XC"},
        {50, "L"}, {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"},{1, "I"} }

    <System.Runtime.CompilerServices.Extension()>
    Public Function ToRoman(ByVal value As Integer) As String
        Return dict.Aggregate("", Function(acc, pair)
            acc += string.Join("", Enumerable.Repeat(pair.Value, value\pair.Key))
            value = value Mod pair.Key
            Return acc
        End Function)
    End Function
End Module
