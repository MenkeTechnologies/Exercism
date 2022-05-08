Public Module Leap
    Public Function IsLeapYear(ByVal year As Integer) As Boolean
        Return year mod 4 = 0 And year mod 100 <> 0 Or year mod 400 = 0
    End Function
End Module
