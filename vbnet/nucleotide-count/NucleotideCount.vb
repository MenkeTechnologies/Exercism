Public Module NucleotideCount
    Public Function Count(ByVal sequence As String) As IDictionary(Of Char, Integer)
        If Not sequence.All(Function(c) "ACGT".Contains(c)) Then Throw New ArgumentException()
        dim dict = New Dictionary(Of Char, Integer) From {{"A", 0}, {"C", 0}, {"G", 0}, {"T", 0}}

        Return sequence.ToCharArray().Aggregate(dict, Function(acc, c)
                                                    acc(c) += 1
                                                    Return acc
                                                End Function)
    End Function
End Module
