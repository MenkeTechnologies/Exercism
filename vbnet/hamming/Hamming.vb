Public Module Hamming
    Public Function Distance(ByVal firstStrand As String, ByVal secondStrand As String) As Integer

        if firstStrand.Length <> secondStrand.Length
            Throw New ArgumentException("Strands have different length")
        End If

        Return firstStrand.Zip(secondStrand).Count(function(tuple) tuple.First <> tuple.Second)

    End Function
End Module
