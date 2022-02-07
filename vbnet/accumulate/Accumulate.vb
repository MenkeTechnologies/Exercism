Imports System.Runtime.CompilerServices

Module AccumulateExtensions
    <Extension()>
    Public Iterator Function Accumulate(Of t)(collection As IEnumerable(Of t), op as Func(Of t,t)) as IEnumerable(Of t)
        For Each e in collection
            Yield op(e)
        Next

    End Function

End Module
