Imports System
Imports System.Collections.Generic
Imports System.Linq

Public Module SumOfMultiples
    Public Function Sum(ByVal factors As IEnumerable(Of Integer), ByVal max As Integer) As Integer
        Return Enumerable.Range(0, max).Where(Function(n) factors.Any(Function(f) (f <> 0) AndAlso n Mod f = 0)).Sum()
    End Function
End Module
