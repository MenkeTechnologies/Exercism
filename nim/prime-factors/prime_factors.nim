proc primeFactors *(n: int64): seq[int] =
    var dup = n
    var divisor = 2
    var factors: seq[int]
    while dup > 1:
        while dup mod divisor == 0:
            factors.add(divisor)
            dup = int64(dup div divisor)
        inc(divisor)
    return factors
