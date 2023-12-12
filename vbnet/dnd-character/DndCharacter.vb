Imports System
Imports System.Linq

Public Class DndCharacter
    Public ReadOnly Property Strength As Integer = Ability()
    Public ReadOnly Property Dexterity As Integer = Ability()
    Public ReadOnly Property Constitution As Integer = Ability()
    Public ReadOnly Property Intelligence As Integer = Ability()
    Public ReadOnly Property Wisdom As Integer = Ability()
    Public ReadOnly Property Charisma As Integer = Ability()
    Public ReadOnly Property Hitpoints As Integer = 10 + Modifier(Constitution)
    Public Shared Function Modifier(ByVal score As Integer) As Integer
        Return Math.Floor((score - 10)/2.0)
    End Function

    Public Shared Function Ability() As Integer
        Dim random As New Random()
        Return Enumerable.Repeat(0, 4).Select(Function(x) random.Next(1, 7)) _
                .OrderByDescending(Function(x) x).Take(3).ToArray().Sum()
    End Function

    Public Shared Function Generate() As DndCharacter
        Return New DndCharacter()
    End Function
End Class
