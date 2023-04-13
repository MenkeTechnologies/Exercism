import tables, strutils

let numberRomanPairs = {1000:"M", 900:"CM", 500:"D", 400:"CD", 100:"C", 90:"XC",
   50:"L", 40:"XL", 10:"X", 9:"IX", 5:"V", 4:"IV", 1:"I"}.toOrderedTable
proc roman*(number: int): string =
  result = ""
  var
    buffer = number
  for number, literal in pairs(numberRomanPairs):
    result.add(literal.repeat(buffer div number))
    buffer = buffer mod number
