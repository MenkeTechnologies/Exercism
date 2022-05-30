#include "nth_prime.h"
#include <vector>
#include <stdexcept>
#include <algorithm>

using namespace std;

namespace nth_prime {
    unsigned nth(unsigned n) {
        vector<unsigned> primes = {2, 3};
        
        if (n == 0)
            throw domain_error("Input must be a positive integer");
        if (n <= primes.size())
            return primes[n - 1];
        auto next_odd = 5;
        while (true) {
            if (none_of(primes.begin(), primes.end(),
                        [next_odd](int p) { return next_odd % p == 0; })) {
                primes.push_back(next_odd);
                if (primes.size() == n)
                    return next_odd;
            }
            next_odd += 2;
        }
    }
}
