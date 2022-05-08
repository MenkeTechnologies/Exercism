Imports System

Public Module CollatzConjecture
    Public Function Steps(ByVal n As Integer) As Integer
       if n < 1 then Throw new ArgumentOutOfRangeException
        Dim cnt = 0
        While n > 1
            If n Mod  2 then n = 3 * n + 1 else n \= 2
            cnt += 1
        End While
        Return cnt
    End Function
End Module
