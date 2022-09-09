#include "nth_prime.h"
#include <math.h>
#include <stdbool.h>
#include <stddef.h>

static bool is_prime(uint32_t n) {
    for (size_t i = 2; i <= sqrt(n); ++i)
        if (n % i == 0) return false;
    return true;
}

uint32_t nth(uint32_t n) {
    if (!n) return 0;
    if (n == 1) return 2;
    uint32_t count = 1, prime = 1;
    while (count < n) {
        prime += 2;
        if (is_prime(prime)) ++count;
    }
    return prime;
}
