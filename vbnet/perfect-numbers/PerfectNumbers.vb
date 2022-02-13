Imports System
Imports System.Linq

Public Enum Classification
    Perfect
    Abundant
    Deficient
End Enum

Public Module PerfectNumbers
    Public Function Classify(number As Integer) As Classification

        If number < 1
            Throw new ArgumentOutOfRangeException()
        End If

        Dim sum = Enumerable.Range(1, number/2).Where(function(i) number Mod i = 0).Sum()

        If sum > number
            Return Classification.Abundant
        ElseIf sum < number
            Return Classification.Deficient
        Else
            Return Classification.Perfect
        End If
    End Function
End Module
