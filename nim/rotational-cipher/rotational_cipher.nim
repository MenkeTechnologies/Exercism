import sequtils, strutils, sugar

proc rotate*(text: string, amt: int): string =
  text.map(c => (
          if c.isAlphaAscii == false: c
          elif c.toLowerAscii.ord + amt <= 'z'.ord: (c.ord + amt).char
          else: (c.ord + amt - 26).char)
          ).join
