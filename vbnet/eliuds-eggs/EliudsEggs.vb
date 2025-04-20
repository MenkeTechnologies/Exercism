Imports System

Public Module EliudsEggs
    Public Function EggCount(ByVal number As Integer) As Integer
        Return Convert.ToString(number, 2).Where(Function(c) c = "1"c).Count()
    End Function
End Module

