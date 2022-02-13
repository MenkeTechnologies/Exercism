Imports System
Imports System.Linq

Public Class HighScores

    Private ReadOnly _s As List(Of Integer)
    Public Sub New(scores As List(Of Integer))
        _s = scores
    End Sub

    Public Function Scores() As List(Of Integer)
        Return _s
    End Function

    Public Function Latest() As Integer
        Return _s.Last()
    End Function

    Public Function PersonalBest() As Integer
        Return _s.Max()
    End Function

    Public Function PersonalTopThree() As List(Of Integer)
        Return _s.OrderByDescending(function(s) s).Take(3).ToList()
    End Function
End Class
