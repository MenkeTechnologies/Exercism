Imports System.Collections.Generic
Public Module ParallelLetterFrequency
    Public Function Calculate(ByVal texts As IEnumerable(Of String)) As Dictionary(Of Char, Integer)
        Return texts.AsParallel().SelectMany(Function(s) s.ToLower().Select(Function(c) c)).Where(Function(c) Char.IsLetter(c)).GroupBy(Function(c) c).ToDictionary(Function(c) c.Key, Function(c) c.Count())
    End Function
End Module
