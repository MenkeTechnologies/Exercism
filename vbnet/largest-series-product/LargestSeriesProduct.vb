Imports System

Public Module LargestSeriesProduct
    Public Function GetLargestProduct(ByVal digits As String, ByVal span As Integer) As Long
        If span > digits.Length OrElse span < 0 OrElse digits.Any(Function(c) c > "9"c Or c < "0"c) Then
            Throw New ArgumentException("invalid arguments")
        End If
        Dim ints = digits.Select(Function(c) Convert.ToInt32(c) - Convert.ToInt32("0"c)).ToList()
        Return Enumerable.Range(0, digits.Length - span + 1).Select(Function(i) ints.Skip(i).Take(span)) _
            .Max(Function(chunk) chunk.Aggregate(Function(acc, n) acc * n))
    End Function
End Module
