Imports System.Collections.Generic
Imports System.Linq

Public Module Etl
    Public Function Transform(ByVal old As Dictionary(Of Integer, String())) As Dictionary(Of String, Integer)
        Return old _
            .SelectMany(Function(kv) kv.Value, Function(kv, letter) New With {.Letter = letter, .Score = kv.Key}) _
            .ToDictionary(Function(l) l.Letter.ToLower(), Function(l) l.Score)
    End Function
End Module
