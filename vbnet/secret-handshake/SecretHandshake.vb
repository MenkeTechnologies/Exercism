Imports System
Imports System.Collections.Generic

Public Module SecretHandshake
    Private ReadOnly dict As IDictionary(Of Integer, String) = New Dictionary(Of Integer, String) From {
        {1, "wink"},
        {2, "double blink"},
        {4, "close your eyes"},
        {8, "jump"}
    }
    Public Function Commands(ByVal commandValue As Integer) As String()
        Dim lst = New List(Of String)()
        For Each order In dict
            If (commandValue And order.Key) > 0 Then lst.Add(order.Value)
        Next
        If (commandValue And 16) > 0 Then lst.Reverse()
        Return lst.ToArray()
    End Function
End Module
