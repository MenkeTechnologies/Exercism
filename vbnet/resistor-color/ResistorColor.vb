Public Module ResistorColor
    Dim lst() As String = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

    Public Function ColorCode(color As String) As Integer
        For i = 0 To lst.Length - 1
            If lst(i) = color Then
                Return i
            End If
        Next
    End Function

    Public Function Colors() As String()
        Return lst
    End Function
End Module
