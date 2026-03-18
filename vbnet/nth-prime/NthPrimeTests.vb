Imports Xunit

Public Class NthPrimeTests
    <Fact>
    Public Sub FirstPrime()
        Assert.Equal(2, Prime(1))
    End Sub

    <Fact>
    Public Sub SecondPrime()
        Assert.Equal(3, Prime(2))
    End Sub

    <Fact>
    Public Sub SixthPrime()
        Assert.Equal(13, Prime(6))
    End Sub

    <Fact>
    Public Sub BigPrime()
        Assert.Equal(104743, Prime(10001))
    End Sub

    <Fact>
    Public Sub ThereIsNoZerothPrime()
        Assert.Throws(Of ArgumentOutOfRangeException)(Function() Prime(0))
    End Sub
End Class
