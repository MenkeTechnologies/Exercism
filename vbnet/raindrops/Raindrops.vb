Imports System
Imports System.Collections.Generic
Imports System.Linq

Public Module Raindrops
    Private dict As IDictionary(Of Integer, String) = New Dictionary(Of Integer, String) From {
        {3, "Pling"},
        {5, "Plang"},
        {7, "Plong"}
    }
    Public Function Convert(number As Integer) As String
        Return String.Join("", dict.Where(Function(x) number Mod x.Key = 0).Select(Function(x) x.Value).DefaultIfEmpty(number.ToString()))
    End Function
End Module
