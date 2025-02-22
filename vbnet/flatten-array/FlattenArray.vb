Imports System.Collections

Public Module FlattenArray
    Public Iterator Function Flatten(lst As IEnumerable) As IEnumerable
        For Each element In lst
            If TypeOf element Is IEnumerable Then
                For Each felement In Flatten(element)
                    Yield felement
                Next
            ElseIf element IsNot Nothing Then
                Yield element
            End If
        Next
    End Function
End Module
