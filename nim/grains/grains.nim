import math, sequtils

func onSquare*(n: int): uint64 =
    if n < 1 or n > 64:
        raise newException(ValueError, "invalid input")
    2.uint64 ^ (n - 1)


func total*(): uint64 =
    (1..64).mapIt(onSquare(it)).sum
