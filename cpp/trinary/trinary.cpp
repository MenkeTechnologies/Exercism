#include "trinary.h"

namespace trinary {
    int to_decimal(std::string tri) {
        int res = 0;
        for (auto c: tri) {
            int digit = c - '0';
            if (digit < 0 || digit > 2)
                return 0;
            res = res * 3 + digit;
        }
        return res;
    }
}
