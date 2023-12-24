Imports System
Public Module Triangle
    Public Function IsScalene(ByVal side1 As Double, ByVal side2 As Double, ByVal side3 As Double) As Boolean
        Return IsTriangle(side1, side2, side3) AndAlso new HashSet(Of Double)({side1, side2, side3}).Count = 3
    End Function
    Public Function IsIsosceles(ByVal side1 As Double, ByVal side2 As Double, ByVal side3 As Double) As Boolean
        Return IsTriangle(side1, side2, side3) AndAlso new HashSet(Of Double)({side1, side2, side3}).Count <= 2
    End Function
    Public Function IsEquilateral(ByVal side1 As Double, ByVal side2 As Double, ByVal side3 As Double) As Boolean
        Return IsTriangle(side1, side2, side3) AndAlso new HashSet(Of Double)({side1, side2, side3}).Count = 1
    End Function
    Private Function IsTriangle(ByVal side1 As Double, ByVal side2 As Double, ByVal side3 As Double) As Boolean
        Dim lst = new List(Of Double)({side1, side2, side3})
        lst.Sort()
        Return lst.All(Function(n) n > 0) AndAlso lst(0) + lst(1) >= lst(2)
    End Function
End Module
