#include "largest_series_product.h"

namespace largest_series_product {

    unsigned int multiply(unsigned int acc, char c) {
        if (!isdigit(c)) { throw domain_error("Invalid digit"); }
        return acc * static_cast<unsigned>(c - '0');
    }

    unsigned int largest_product(const string &s, int len) {
        if (len < 0 || static_cast<int>(s.size()) < len) { throw domain_error("Invalid slice length"); }
        return transform_reduce(s.begin(), s.end() - len + 1, 0U,
                                [](auto acc, auto n) { return max(acc, n); },
                                [len](char const &c) { return accumulate(&c, &c + len, 1U, multiply); }
        );
    }
}
