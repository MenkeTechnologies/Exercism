Imports System.Text.RegularExpressions

Public Class PhoneNumber
    Dim Shared ReadOnly re = New Regex("^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$")

    Public Shared Function Clean(phoneNumber As String) As String

        Dim match = re.Match(phoneNumber)

        If Not match.Success Then
            Throw New ArgumentException()
        End If

        Return $"{match.Groups(2)}{match.Groups(3)}{match.Groups(4)}"
    End Function
End Class
