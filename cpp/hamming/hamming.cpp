#include "hamming.h"

namespace hamming {

    size_t compute(const string &a, const string &b) {
        if (a.size() != b.size()) throw domain_error("Length must be equal");

        size_t sum = 0;
        for (size_t i = 0; i < a.size(); ++i) {
            if (a[i] != b[i]) sum += 1;
        }
        return sum;
    }
}
