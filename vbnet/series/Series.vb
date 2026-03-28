Imports System
Imports System.Linq

Public Module Series
    Public Function Slices(ByVal numbers As String, ByVal sliceLength As Integer) As String()
        If sliceLength < 1 OrElse sliceLength > numbers.Length OrElse numbers.Length < 1 Then Throw New ArgumentException()
        Return (From i In Enumerable.Range(0, numbers.Length - sliceLength + 1) Select numbers.Substring(i, sliceLength)).ToArray()
    End Function
    
End Module