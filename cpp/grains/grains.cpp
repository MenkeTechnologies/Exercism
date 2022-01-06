#include "grains.h"

namespace grains {

    unsigned long square(int top) {
        return std::pow(2, top - 1);
    }

    unsigned long long int total() {

        unsigned long sum = 0;

        for (int i = 1; i <= 64; ++i) {
            sum += square(i);

        }

        return sum;
    }

}  // namespace grains
