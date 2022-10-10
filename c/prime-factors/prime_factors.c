#include "prime_factors.h"
size_t find_factors(uint64_t n, uint64_t factors[static MAXFACTORS])
{
    size_t cnt = 0;
    uint64_t divisor = 2;
    while (n >= divisor)
    {
        while (n % divisor == 0)
        {
            factors[cnt++] = divisor;
            n /= divisor;
        }
        ++divisor;
    }
    return cnt;
}
