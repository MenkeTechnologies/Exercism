Imports System

Public Module DifferenceOfSquares
    Public Function CalculateSquareOfSum(ByVal max As Integer) As Integer
        Return CInt(Math.Pow(Enumerable.Range(1, max).Aggregate(Function(acc, n) acc + n), 2))
    End Function

    Public Function CalculateSumOfSquares(ByVal max As Integer) As Integer
        Return CInt(Enumerable.Range(1, max).Select(Function(n) Math.Pow(n, 2)).Aggregate(Function(acc, n) acc + n))
    End Function

    Public Function CalculateDifferenceOfSquares(ByVal max As Integer) As Integer
        Return CalculateSquareOfSum(max) - CalculateSumOfSquares(max)
    End Function
End Module
