import sequtils, strutils

proc diamond*(letter: char): string =
  let side = (ord(letter) - ord('A')) * 2 + 1
  var square = sequtils.repeat(spaces(side), side)
  for c in 'A'..letter:
    let
      charIdx = ord(c) - ord('A')
      x1 = int((side - 1) / 2) - charIdx
      x2 = int((side - 1) / 2) + charIdx
      y1 = charIdx
      y2 = side - 1 - charIdx
    square[y1][x1] = c
    square[y2][x1] = c
    square[y1][x2] = c
    square[y2][x2] = c
  square.join("\n") & "\n"
