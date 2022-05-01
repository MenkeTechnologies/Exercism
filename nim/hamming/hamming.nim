import sequtils, future

proc distance*(s1, s2: string): int =
    if len(s1) != len(s2):
        raise newException(ValueError, "Strands are of different lengths!")
    zip(s1, s2).countIt(it[0] != it[1])
