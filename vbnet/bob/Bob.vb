Public Class Bob
    Public Function Hey(statement As String) As String
        Dim isQuestion = statement.EndsWith("?")
        Dim isUppercase = Text.RegularExpressions.Regex.Match(statement, "[A-Z]").Success AndAlso
                          (Not Text.RegularExpressions.Regex.Match(statement, "[a-z]").Success)
        Dim isEmpty = statement.Trim() = String.Empty
        If isEmpty Then
            Return "Fine. Be that way!"
        ElseIf isUppercase Then
            Return If (isQuestion, "Calm down, I know what I'm doing!", "Whoa, chill out!")
        End If
        Return If (isQuestion, "Sure.", "Whatever.")
    End Function
End Class
