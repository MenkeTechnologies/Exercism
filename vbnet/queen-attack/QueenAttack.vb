Imports System

Public Class Queen
    Public Sub New(ByVal row As Integer, ByVal column As Integer)
        Me.Row = row
        Me.Column = column
    End Sub

    Public ReadOnly Property Row As Integer
    Public ReadOnly Property Column As Integer
End Class

Public Module QueenAttack
    Public Function CanAttack(ByVal white As Queen, ByVal black As Queen) As Boolean
        Dim dx = Math.Abs(white.Row - black.Row)
        Dim dy = Math.Abs(white.Column - black.Column)

        Return dx = 0 or dy = 0 or dx = dy
    End Function

    Public Function Create(ByVal row As Integer, ByVal column As Integer) As Queen
        If row < 0 or column < 0 or row > 7 or Column > 7
            Throw new ArgumentOutOfRangeException()
        End If

        Return new Queen(row, column)
    End Function
End Module
