Imports System.Collections.Generic
Imports System.Linq
Imports System.Text.RegularExpressions

Public Module WordCount
    Public Function CountWords(ByVal s As String) As IDictionary(Of String, Integer)
        Return Regex.Matches(s, "\b[\w']+\b").Select(Function(m) m.Value).GroupBy(Function(w) w.ToLowerInvariant()).ToDictionary(Function(kv) kv.Key, Function(kv) kv.Count())
    End Function
End Module
