Imports System
Imports System.Collections.Generic

Public Class Robot
    Private _name As String
    Private ReadOnly rng As New Random()
    Private shared ReadOnly names As New HashSet(Of String)()

    Public ReadOnly Property Name As String
        Get
            Return _name
        End Get
    End Property

    Public Sub New()
        Reset()
    End Sub

    Public Sub Reset()
        _name = Create()
        Dim added = names.Add(_name)
        While (Not added)
            _name = Create()
            added = names.Add(_name)
        End While
    End Sub

    Public Function Create() As String
        Dim raw = $"{ChrW(rng.Next(CInt(AscW("A"c)), CInt(AscW("Z"c)) + 1))}{ _
            ChrW(rng.Next(CInt(AscW("A"c)), CInt(AscW("Z"c)) + 1))}{rng.Next(1000):D3}"
        Return raw
    End Function
End Class
