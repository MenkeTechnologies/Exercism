def prime(n):
    if n < 1:
        raise ValueError("there is no zeroth prime")
    curr = 3
    primes = [2]
    while len(primes) < n:
        if all(curr % p != 0 for p in primes):
            primes.append(curr)
        curr += 2
    return primes[-1]
