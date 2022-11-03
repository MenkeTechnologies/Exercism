#include "prime_factors.h"
#include <vector>

vector<int> prime_factors::of(unsigned int n) {
    vector<int> factors;
    unsigned int divisor = 2;
    while (n > 1) {
        while (n % divisor == 0) {
            factors.emplace_back(divisor);
            n /= divisor;
        }
        ++divisor;
    }
    return factors;
}
