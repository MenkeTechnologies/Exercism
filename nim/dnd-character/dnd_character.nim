import math, random
type
  Character* = object
    strength*, dexterity*, constitution*, intelligence*, wisdom*, charisma*, hitpoints*: int
randomize()

proc ability*: int =
  var
    lowest = 7
    throw: int
  for i in 1..4:
    throw = rand(1..6)
    lowest = min(throw, lowest)
    result += throw
  result -= lowest

proc modifier*(n: int): int = ((n-10).floorDiv(2))

proc initCharacter*: Character =
  let constitution = ability()
  Character(
              strength:ability(),
              dexterity: ability(),
              constitution: constitution,
              intelligence: ability(),
              wisdom: ability(),
              charisma: ability(),
              hitpoints: 10 + modifier(constitution)
  )

