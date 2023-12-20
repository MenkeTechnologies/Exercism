Imports System
Imports System.Linq

Public Module Acronym
    Public Function Abbreviate(ByVal phrase As String) As String
        Dim separators = {" "c, "-"c, "_"c}
        Return String.Join("", phrase.Split(separators).Where(Function(s) s.Length).Select(Function(s) s(0))).ToUpper()
    End Function
End Module
