#include "all_your_base.h"
#include <numeric>
#include <stdexcept>

namespace all_your_base {
    vector<unsigned int> convert(unsigned int in_base, vector<unsigned int> const &digits, unsigned int out_base) {
        if (in_base < 2 || out_base < 2) { throw invalid_argument("in and out base must be < 2"); }
        long sum = accumulate(digits.begin(), digits.end(), 0, [in_base](int acc, unsigned int n) {
            if (n >= in_base) { throw invalid_argument("digit exceeds base"); }
            return acc * in_base + n;
        });
        vector<unsigned int> result;
        while (sum) {
            result.insert(result.begin(), sum % out_base);
            sum /= out_base;
        }
        return result;
    }
}
