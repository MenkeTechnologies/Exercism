Imports Xunit

Public Class ScrabbleScoreTests
    <Fact>
    Public Sub Lowercase_letter()
        Assert.Equal(1, Score("a"))
    End Sub

    <Fact>
    Public Sub Uppercase_letter()
        Assert.Equal(1, Score("A"))
    End Sub

    <Fact>
    Public Sub Valuable_letter()
        Assert.Equal(4, Score("f"))
    End Sub

    <Fact>
    Public Sub Short_word()
        Assert.Equal(2, Score("at"))
    End Sub

    <Fact>
    Public Sub Short_valuable_word()
        Assert.Equal(12, Score("zoo"))
    End Sub

    <Fact>
    Public Sub Medium_word()
        Assert.Equal(6, Score("street"))
    End Sub

    <Fact>
    Public Sub Medium_valuable_word()
        Assert.Equal(22, Score("quirky"))
    End Sub

    <Fact>
    Public Sub Long_mixed_case_word()
        Assert.Equal(41, Score("OxyphenButazone"))
    End Sub

    <Fact>
    Public Sub English_like_word()
        Assert.Equal(8, Score("pinata"))
    End Sub

    <Fact>
    Public Sub Empty_input()
        Assert.Equal(0, Score(""))
    End Sub

    <Fact>
    Public Sub Entire_alphabet_available()
        Assert.Equal(87, Score("abcdefghijklmnopqrstuvwxyz"))
    End Sub
End Class
