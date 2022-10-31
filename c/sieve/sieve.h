#pragma once
#include <stdint.h>
#include <stddef.h>
/// Calculate at most `max_primes` prime numbers in the interval [2,limit]
/// using the Sieve of Eratosthenes and store the prime numbers in `primes`
/// in increasing order.
/// The function returns the number of calculate primes.
extern uint32_t sieve(uint32_t limit, uint32_t *primes, size_t primes_capacity);
