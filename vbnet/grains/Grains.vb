Imports System
Public Module Grains
    Public Function Square(ByVal n As Integer) As ULong
        If n < 1 OR n > 64
          Throw New ArgumentOutOfRangeException()
        End If
        Return 2 ^ (n-1)
    End Function
    Public Function Total() As ULong
        Dim totalSum as ULong = 0
        For n As Integer = 1 To 64
          totalSum += Square(n)
        Next
        Return totalSum
    End Function
End Module
