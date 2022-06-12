#include "sieve.h"

#include <list>
#include <numeric>

namespace sieve {

    vector<int> primes(int n) {
        vector<int> r;
        list<int> candidates(n - 1);
        iota(candidates.begin(), candidates.end(), 2);

        while (!candidates.empty()) {
            const int next = candidates.front();
            candidates.pop_front();
            r.push_back(next);
            candidates.remove_if([next](int n) { return n % next == 0; });
        }
        return r;
    }
}
