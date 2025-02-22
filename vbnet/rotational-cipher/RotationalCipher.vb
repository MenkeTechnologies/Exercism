Imports System.Linq

Public Module RotationalCipher
    Private Function RotateChar(c As Char, shiftKey As Integer) As Char
        If Not Char.IsLetter(c) Then
            Return c
        End If
        Dim offset  = If(Char.IsLower(c), AscW("a"c), AscW("A"c))
        Return ChrW(offset + (AscW(c) - offset + shiftKey) Mod 26)
    End Function

    Public Function Rotate(s As String, shiftKey As Integer) As String
        Return New String(s.Select(Function(c) RotateChar(c, shiftKey)).ToArray())
    End Function
End Module
