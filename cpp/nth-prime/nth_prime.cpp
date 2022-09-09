#include "nth_prime.h"
#include <vector>
#include <stdexcept>
#include <algorithm>

using namespace std;

namespace nth_prime {
    size_t nth(size_t n) {
        vector<size_t> primes = {2};
        if (n < 1) throw domain_error("Input must be a positive integer");
        auto next_odd = 3;
        while (primes.size() < n) {
            if (none_of(primes.begin(), primes.end(),
                        [next_odd](int p) { return next_odd % p == 0; })) {
                primes.push_back(next_odd);
            }
            next_odd += 2;
        }
        return primes[n - 1];
    }
}
