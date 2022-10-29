import std/[strformat, strutils]
type
  Queen* = object
    row*, col*: range[0..7]

func initQueen*(row, col: int): Queen =
  if not (row in 0..7 and col in 0..7):
    raise newException(ValueError, &"Row & col must be in 0..7 but {row = } & {col = }")
  result = Queen(row: row, col: col)

func canAttack*(queen1, queen2: Queen): bool =
  if queen1 == queen2:
    raise newException(ValueError, "Queens can't have the same position")
  let dx = abs(queen1.col - queen2.col)
  let dy = abs(queen1.row - queen2.row)
  result = dx == 0 or dy == 0 or dx == dy

func board*(whiteQueen, blackQueen: Queen): string =
  if whiteQueen == blackQueen:
    raise newException(ValueError, "Queens can't have the same position")
  result = ("_".repeat(8) & '\n').repeat(8)
  result[whiteQueen.row * 9 + whiteQueen.col] = 'W'
  result[blackQueen.row * 9 + blackQueen.col] = 'B'

