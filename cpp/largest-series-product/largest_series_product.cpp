#include "largest_series_product.h"

namespace largest_series_product {

    unsigned int multiply(unsigned int n, char c) {
        if (!isdigit(c)) { throw domain_error("Invalid digit"); }
        return n * static_cast<unsigned>(c - '0');
    }

    unsigned int largest_product(const string &s, int n) {
        if (n < 0 || static_cast<int>(s.size()) < n) { throw domain_error("Invalid slice length"); }
        return transform_reduce(s.begin(), s.end() - n + 1, 0U,
                                [](auto l, auto r) { return max(l, r); },
                                [n](char const &c) { return accumulate(&c, &c + n, 1U, multiply); }
        );
    }
}
