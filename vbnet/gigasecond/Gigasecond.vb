Imports System

Public Module Gigasecond
    Public Function Add(ByVal moment As Date) As Date
        Return moment.AddSeconds(1e9)
    End Function
End Module
