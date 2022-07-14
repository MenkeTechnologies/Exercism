Imports System.Runtime.CompilerServices

Module Crypto
    Public Function Ciphertext(plaintext As String) As String
        If plaintext.Length = 0
            Return ""
        Else
            Return String.Join(" ", plaintext.Normalized().Rows().Columns())
        End If
    End Function

    <Extension>
    Private Function Normalized(str As String) As String
        Return New String(str.Where(AddressOf Char.IsLetterOrDigit).Select(AddressOf Char.ToLower).ToArray())
    End Function

    <Extension>
    Private Function Size(s As String) As Integer
        Return Math.Ceiling(Math.Sqrt(s.length))
    End Function

    <Extension>
    Private Function Rows(s As String) As List(Of String)
        Dim size = s.Size()
        Return s.Chunks(size).Select(Function(row) row.PadRight(size)).ToList()
    End Function

    <Extension>
    Private Function Columns(rows As List(Of String)) As List(Of String)
        Return Enumerable.Range(0, rows(0).Length).
            Select(Function(i) String.Concat(rows.Select(Function(row) row(i)))).
            ToList()
    End Function

    <Extension>
    Private Iterator Function Chunks(s As String, size As Integer) As IEnumerable(Of String)
        For i = 0 To s.Length - 1 Step size
            Yield s.Substring(i, Math.Min(s.Length - i, size))
        Next
    End Function
End Module
