import math, sequtils

func squareOfSum*(n: int): int = toSeq(1..n).sum ^ 2
func sumOfSquares*(n: int): int = toSeq(1..n).mapIt(it^2).sum
func difference*(n: int): int = squareOfSum(n) - sumOfSquares(n)
