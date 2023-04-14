import sequtils

type Colors* = enum Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White

proc colorCode*(color: Colors): int = ord(color)

proc colors*: seq[Colors] = toSeq(Colors)
