#include "sieve.h"
#include <stdbool.h>

uint32_t
sieve(uint32_t limit, uint32_t *primes, size_t primes_capacity) {
    uint32_t num_primes = 0;
    
    if (limit < 2) return num_primes;
    if (primes_capacity == 0) return num_primes;
    
    bool is_prime[limit + 1];

    for (uint32_t i = 0; i < limit + 1; ++i)
        is_prime[i] = true;

    for (uint32_t i = 2; i <= limit; ++i) {
        if (is_prime[i]) {
            primes[num_primes++] = i;

            if (num_primes >= primes_capacity) break;

            for (uint32_t j = 2; i * j <= limit; ++j)
                is_prime[i * j] = false;
        }
    }
    return num_primes;
}
