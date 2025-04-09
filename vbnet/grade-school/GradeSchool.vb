Imports System.Collections.Generic
Imports System.Linq

Public Class GradeSchool
    Private ReadOnly _roster As New Dictionary(Of String, Integer)()

    Public Function Add(ByVal student As String, ByVal grade As Integer) As Boolean
        Return _roster.TryAdd(student, grade)
    End Function

    Public Function Roster() As IEnumerable(Of String)
        Return _roster.OrderBy(Function(kv) kv.Value).ThenBy(Function(kv) kv.Key).Select(Function(kv) kv.Key)
    End Function

    Public Function Grade(ByVal requestedGrade As Integer) As IEnumerable(Of String)
        Return _roster.Where(Function(kv) kv.Value = requestedGrade).OrderBy(Function(kv) kv.Key).Select(
            Function(kv) kv.Key).ToArray()
    End Function
End Class
