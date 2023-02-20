import strutils

type Plants* = enum Grass = "G", Clover = "C", Radishes = "R", Violets = "V"

proc plants*(garden: string, student: string): seq[Plants] =
  let
    studentPos = (ord(student[0]) - ord('A')) * 2
    totalPlants  = garden.len() div 2
  return @[parseEnum[Plants]($garden[studentPos]),
          parseEnum[Plants]($garden[studentPos + 1]),
          parseEnum[Plants]($garden[studentPos + totalPlants + 1]),
          parseEnum[Plants]($garden[studentPos + totalPlants + 2])]
