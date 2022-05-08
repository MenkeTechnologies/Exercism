Public Class Anagram
    Private ReadOnly _word As String

    Public Sub New(word As String)
        _word = word
    End Sub

    Public Function Match(candidates As String()) As IEnumerable(Of String)
        Return candidates.Where(AddressOf IsAnagram).OrderBy(Function(w) w).ToArray()
    End Function

    Private Function IsAnagram(candidate As String) As Boolean
        Return SortedLowerCase(candidate) = SortedLowerCase(_word) And candidate.ToLower() <> _word.ToLower()
    End Function

    Private Function SortedLowerCase(word As String) As String
        Return new String(word.ToLower().OrderBy(Function(c)c).ToArray())
    End Function
End Class
