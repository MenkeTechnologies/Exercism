#if !defined(SUM_OF_MULTIPLES_H)
#define SUM_OF_MULTIPLES_H

#include <vector>
#include <numeric>

namespace sum_of_multiples {

    using namespace std;

    inline int to(vector<int> factors, int sum) {

        factors.erase(remove_if(factors.begin(), factors.end(), [](int it) { return it <= 0; }), factors.end());

        vector<int> range(sum);
        vector<int> multiples;

        for (int i = 1; i < sum; ++i) {
            range.emplace_back(i);
        }

        copy_if(range.begin(), range.end(), back_inserter(multiples), [factors](int mult) {

            return any_of(factors.begin(), factors.end(), [&](const auto &fact) {
                return mult % fact == 0;
            });

        });

        return accumulate(multiples.begin(), multiples.end(), 0);
    }
}

#endif // SUM_OF_MULTIPLES_H
