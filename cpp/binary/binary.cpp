#include "binary.h"

namespace binary {
    int convert(const std::string &s) {
        int res = 0;
        for (char c: s) {
            int digit = c - '0';
            if (digit < 0 || digit > 1)
                return 0;
            res = res * 2 + digit;
        }
        return res;
    }
}
