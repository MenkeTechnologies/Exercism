Imports Xunit

Public Class ZebraPuzzleTests
    <Fact>
    Public Sub Resident_who_drinks_water()
        Assert.Equal(Nationality.Norwegian, DrinksWater())
    End Sub

    <Fact>
    Public Sub Resident_who_owns_zebra()
        Assert.Equal(Nationality.Japanese, OwnsZebra())
    End Sub
End Class
