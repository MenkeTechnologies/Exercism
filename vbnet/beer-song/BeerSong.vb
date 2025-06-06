Imports System

Public Module BeerSong
    Public Function Recite(ByVal startBottles As Integer, ByVal takeDown As Integer) As String
        Dim verses = Enumerable.Range(startBottles - takeDown + 1, takeDown).Reverse().Select(Function(n) Verse(n))
        Return String.Join(Environment.NewLine & Environment.NewLine, verses)
    End Function

    Private Function FirstLine(bottle1 As String, bottle2 as String, plural1 as String)
        Return _
            $"{bottle1} bottle{plural1} of beer on the wall, {bottle2} bottle{plural1} of beer." & Environment.NewLine
    End Function

    Private Function Helper(bottle1 As String, plural1 as String, bottle2 As String, bottle3 As String,
                            plural2 As String)
        Return FirstLine(bottle1, bottle1, plural1) &
               $"Take {bottle2} down and pass it around, {bottle3} bottle{plural2} of beer on the wall."
    End Function

    Private Function Verse(bottles As Integer) As String
        Select Case bottles
            Case 2
                Return Helper(bottles.ToString(), "s", "one", $"{bottles - 1}", "")
            Case 1
                Return Helper(bottles.ToString(), "", "it", "no more", "s")
            Case 0
                Return FirstLine("No more", "no more", "s") &
                       "Go to the store and buy some more, 99 bottles of beer on the wall."
            Case Else
                Return Helper(bottles.ToString(), "s", "one", $"{bottles - 1}", "s")
        End Select
    End Function
End Module
