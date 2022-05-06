import sequtils, math

type Aliquot* = enum
    Deficient, Perfect, Abundant

proc classify*(n: int): Aliquot =
    if n < 1: raise newException(ValueError, "only natural numbers")
    let aliq = toSeq(1..n div 2).filterIt(n mod it == 0).sum
    if aliq < n:
        result = Deficient
    elif aliq == n:
        result = Perfect
    else:
        result = Abundant
