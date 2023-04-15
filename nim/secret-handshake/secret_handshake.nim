import algorithm
const signals = [ "wink", "double blink", "close your eyes", "jump" ]
const reverseBit = 4

proc bitset(input: Natural, position: Natural): bool =
  (input and 1 shl position) > 0

proc commands*(input: Natural): seq[string] =
  for i, s in signals:
    if input.bitset(i):
      result.add(s)

  if input.bitset(reverseBit):
    result.reverse
