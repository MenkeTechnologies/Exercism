import sequtils, math

proc valid(sides: array[3, int]): bool =
    sides.allIt(it != 0) and sides.sum() - sides.max() >= sides.max()

proc isIsosceles*(sides: array[3, int]): bool =
    valid(sides) and deduplicate(sides).len <= 2

proc isEquilateral*(sides: array[3, int]): bool =
    valid(sides) and deduplicate(sides).len == 1

proc isScalene*(sides: array[3, int]): bool =
    valid(sides) and deduplicate(sides).len == 3

