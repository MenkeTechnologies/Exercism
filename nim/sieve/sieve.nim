proc primes*(limit: int): seq[int] =
  var nonPrimes: seq[int]
  for i in 2..limit:
    if i in nonPrimes: continue
    result.add i
    for j in countup(i,limit,i): nonPrimes.add j
