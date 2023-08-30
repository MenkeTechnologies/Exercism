Imports System.Text.RegularExpressions

Public Module Isogram
    Public Function IsIsogram(ByVal word As String) As Boolean
        Return Not (New Regex("(\w).*\1")).Match(LCase(word)).Success
    End Function
End Module
