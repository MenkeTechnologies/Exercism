import algorithm, re, strutils, sequtils

proc isValid*(isbn: string): bool =
    if not isbn.match(re"^\d-?\d{3}-?\d{5}-?(?:\d|X)$"):
        return false

    var sum = 0
    for i, ch in isbn.filterIt(it.isDigit or it == 'X').reversed:
        sum += (if ch == 'X': 10 else: (int(ch) - int('0')) * (i + 1))

    sum mod 11 == 0
