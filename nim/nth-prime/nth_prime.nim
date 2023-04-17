proc prime*(n: int): int =
  if n < 1:
    raise newException(ValueError, "n must be >= 1")
  var primes: seq[int] = @[]
  var candidate = 2
  while primes.len < n:
    block inner:
      for p in primes:
        if candidate mod p == 0:
          break inner
      primes.add(candidate)
    candidate += 1
  primes[^1]

