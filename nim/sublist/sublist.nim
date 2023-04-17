import sequtils

type Result* = enum
  Unequal, Equal, Sublist, SuperList

proc contains[T](x, y: openArray[T]): bool =
  anyIt(0 .. x.len - y.len, y == x[it ..< it + y.len])

proc sublist*(a, b: openArray[int]): Result =
  if a == b: result = Equal
  elif a in b: result = Sublist
  elif b in a: result = Superlist
