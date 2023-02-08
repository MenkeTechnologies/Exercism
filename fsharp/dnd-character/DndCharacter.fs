module DndCharacter

let modifier constitution =
    float (constitution - 10) / 2.0
    |> floor
    |> int

let ability() =
    List.init 4 (fun _ -> System.Random().Next(1, 7))
    |> List.sort
    |> List.tail
    |> List.sum

type Character =
    { Strength: int
      Dexterity: int
      Constitution: int
      Intelligence: int
      Wisdom: int
      Charisma: int }
    member this.Hitpoints = 10 + modifier (this.Constitution)

let createCharacter() =
    { Strength = ability()
      Dexterity = ability()
      Constitution = ability()
      Intelligence = ability()
      Wisdom = ability()
      Charisma = ability() }
