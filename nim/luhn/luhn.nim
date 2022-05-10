import sequtils, math, strutils

proc isValid*(luhn: string): bool =
    var nows = luhn.filterIt(it != ' ').mapIt(ord(it) - ord('0'))
    if nows.len < 2 or nows.anyIt(it notin 0..9):
        return false

    var sum = 0
    for i in countdown(nows.high, nows.low):
        var cnt = nows.len - i - 1
        var dbl = if cnt mod 2 == 0: nows[i] else: nows[i] * 2
        sum += (if dbl > 9: dbl - 9 else: dbl)

    return sum mod 10 == 0

