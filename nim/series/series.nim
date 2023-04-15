import sequtils

proc slices*(s: string, interval: int): seq[string] =
  if interval <= 0 or s.len < interval:
    raise newException(ValueError, "invalid input")
  toSeq(0 .. s.len - interval).mapIt(s[it ..< it + interval])
