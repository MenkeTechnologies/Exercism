import tables, strutils, sequtils, unicode, re

const alpha = "abcdefghijklmnopqrstuvwxyz"
const rvs = alpha.reversed
const nums = "0123456789"

var MAP = initTable[char,char]()

for (k,v) in zip(alpha, rvs): MAP[k] = v
for (k,v) in zip(rvs, alpha): MAP[k] = v
for k in nums: MAP[k] = k
proc decode*(input: string): string =
  input
    .filterIt(it.isAlphaNumeric)
    .mapIt(MAP[it.toLowerAscii])
    .join("")

proc encode*(input: string): string =
  decode(input)
    .findAll(re".{1,5}")
    .join(" ")
