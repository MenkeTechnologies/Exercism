Structure Clock
    Private ReadOnly _clock As DateTime
    Sub New(hours As Integer, minutes As Integer)
        Dim t = (New DateTime(2, 1, 1, 0, 0, 0)).AddHours(hours).AddMinutes(minutes)
        _clock = New DateTime(2, 1, 1, t.Hour, t.Minute, 0)
    End Sub
    Function Add(minutesToAdd As Integer) As Clock
        Return New Clock(_clock.Hour, _clock.Minute + minutesToAdd)
    End Function
    Function Subtract(minutesToSubtract As Integer) As Clock
        Return New Clock(_clock.Hour, _clock.Minute - minutesToSubtract)
    End Function
    Public Overrides Function ToString() As String
        Return _clock.ToString("HH:mm")
    End Function
End Structure
