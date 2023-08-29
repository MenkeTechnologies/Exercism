Imports System

Public Module ResistorColorDuo
    Dim lst() As String = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

    Public Function Value(colors As String) As Integer
        Return Integer.Parse(Array.IndexOf(colorList, colors(0)).ToString() & Array.IndexOf(colorList, colors(1)).ToString())
    End Function

End Module
