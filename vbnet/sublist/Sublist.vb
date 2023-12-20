Imports System
Imports System.Collections.Generic
Imports System.Linq

Public Enum SublistType
    Equal
    Unequal
    Superlist
    Sublist
End Enum

Public Module Sublist
    Public Function Classify (Of T As {IComparable})(ByVal list1 As List(Of T), ByVal list2 As List(Of T)) As SublistType

        Dim s1 = String.Join(",", list1) + ","
        Dim s2 = String.Join(",", list2) + ","

        Return IIf(s1 = s2, SublistType.Equal, IIf(s2.Contains(s1), SublistType.Sublist, IIf(s1.Contains(s2), SublistType.Superlist, SublistType.Unequal)))
    End Function
End Module
