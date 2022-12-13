#!/usr/bin/env gawk -f

BEGIN {
    if (n < 1) {
        print("invalid input")
        exit 1
    }
    primes[1] = 2
    cnt = 1
    candidate = 1
    while (cnt < n) {
        while (1) {
            candidate += 2
            is_prime = 1
            i = 1
            while (primes[i] <= sqrt(candidate)) {
                if (candidate % primes[i] == 0) {
                    is_prime = 0
                    break
                }
                ++i
            }
            if (is_prime) break
        }
        primes[++cnt] = candidate
    }
    print primes[n]
}

