Imports System

Public Module Darts
  Public Function Score(ByVal x As Double, ByVal y As Double) As Integer
    Dim dist = Math.Sqrt(x*x + y*y)
    If dist <= 1
      Return 10
    ElseIf dist <= 5
      Return 5
    ElseIf dist <= 10
      Return 1
    Else
      Return 0
    End If
  End Function
End Module
