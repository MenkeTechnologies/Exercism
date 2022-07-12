Module Program
    Function IsPaired(ByRef s As String) As Boolean
        Dim stk As New Stack(Of Char)
        For Each c In s
            Select Case c
                Case "("c : stk.Push(")"c)
                Case "["c : stk.Push("]"c)
                Case "{"c : stk.Push("}"c)
                Case ")"c, "]"c, "}"c
                    If stk.Count = 0 OrElse c <> stk.Pop() Then _
                        Return False
            End Select
        Next
        Return stk.Count = 0
    End Function
End Module
