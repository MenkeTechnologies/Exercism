Imports System
Imports System.Collections.Generic

Public Module PrimeFactors
    Public Function Factors(ByVal start As Long) As Long()
        Dim longArr As List(Of Long) = New List(Of Long)()
        Dim divisor = 2L

        While start > 1
            While start Mod divisor = 0
                longArr.Add(divisor)
                start /= divisor
            End While
            divisor += 1
        End While
        Return longArr.ToArray()
    End Function
End Module
