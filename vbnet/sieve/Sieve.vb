Imports System
Imports System.Collections
Imports System.Collections.Generic

Public Module Sieve
    Iterator Function Primes(ByVal max As Integer) As IEnumerable(Of Integer)
        If max < 0 Then Throw New ArgumentOutOfRangeException(NameOf(max))
        Dim isPrime = New BitArray(max + 1, True)
        For i = 2 To max
            If Not isPrime(i) Then Continue For
            For j = i * i to max step i
                isPrime(j) = False
            Next
            Yield i
        Next
    End Function
End Module
