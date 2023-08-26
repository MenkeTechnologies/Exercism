Imports System.Linq

Public Module Pangram
    Const alphabet As String = "abcdefghijklmnopqrstuvwxyz"
    Public Function IsPangram(ByVal input As String) As Boolean
        Return alphabet.All(Function(c) input.ToLower().Contains(c))
    End Function
End Module
