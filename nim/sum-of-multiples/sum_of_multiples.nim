import sequtils, sugar, math

proc sum*(limit: int, factors: seq[int]) : int =
    (1..<limit).toSeq.filter(num => anyIt(factors,  it > 0 and num mod it == 0)).sum
