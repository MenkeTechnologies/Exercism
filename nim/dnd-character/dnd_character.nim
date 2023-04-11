import std/[math, random]

type Character* = object
    strength*: int
    dexterity*: int
    wisdom*: int
    charisma*: int
    constitution*: int
    intelligence*: int
    hitPoints*: int

randomize()

proc ability*: int =
  var rolls = [0, 0, 0, 0]
  for roll in rolls.mitems:
    roll = rand(1..6)
  sum(rolls) - min(rolls)

func modifier*(n: int): int = floorDiv(n - 10, 2)

proc initCharacter*: Character =
  let constitution = ability()
  Character(strength: ability(),
    dexterity: ability(),
    wisdom: ability(),
    charisma: ability(),
    intelligence: ability(),
    constitution: constitution,
    hitPoints: 10 + modifier(constitution))
