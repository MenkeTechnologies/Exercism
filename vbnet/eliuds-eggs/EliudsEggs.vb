Imports System

Public Module EliudsEggs
    Public Function EggCount(ByVal n As Integer) As Integer
        Return Convert.ToString(n, 2).Where(Function(c) c = "1"c).Count()
    End Function
End Module
