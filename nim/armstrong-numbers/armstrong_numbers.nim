import math, sequtils, strutils

func isArmstrongNumber*(n: int): bool = n == ($n).mapIt(parseInt($it) ^ ($n).len).sum

