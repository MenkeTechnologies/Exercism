Imports System

Public Module BinarySearch
    Public Function Find(ByVal input As Integer(), ByVal value As Integer) As Integer
        Dim lo = 0
        Dim hi = input.Length - 1
        While lo <= hi
            Dim mid = Math.Floor((lo + hi)/2)
            If input(mid) = value
                Return mid
            ElseIf value < input(mid)
                hi = mid - 1
            Else
                lo = mid + 1
            End If
        End While
        Return -1
    End Function
End Module
