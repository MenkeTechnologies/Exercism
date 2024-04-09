import std/math

type ResistorColor* = enum Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White

const units = ["ohms", "kiloohms", "megaohms", "gigaohms"]

proc label*(ary: array[3, ResistorColor]): tuple[value: int, unit: string] =
  var value = (ary[0].ord * 10 + ary[1].ord) * 10 ^ ary[2].int
  for unit in units:
    if value < 1000:
      return (value, unit)
    value = value div 1000

