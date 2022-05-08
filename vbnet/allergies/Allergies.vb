Public Class Allergies
    Private ReadOnly score As Integer
    Private Shared ReadOnly AvailableAllergies As New Dictionary(Of String, Integer) From {
        {"eggs", 1},
        {"peanuts", 2},
        {"shellfish", 4},
        {"strawberries", 8},
        {"tomatoes", 16},
        {"chocolate", 32},
        {"pollen", 64},
        {"cats", 128}
        }

    Public Sub New(score As Integer)
        Me.score = score
    End Sub

    Public Function List() As List(Of String)
        Return AvailableAllergies.Where(Function(it) AllergicTo(it.Key)).Select(Function(it) it.Key).ToList()
    End Function

    Public Function AllergicTo(allergen As String) As Boolean
        Return (score and AvailableAllergies(allergen)) > 0
    End Function
End Class
