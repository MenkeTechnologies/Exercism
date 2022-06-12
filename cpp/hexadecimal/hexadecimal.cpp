#include "hexadecimal.h"

namespace hexadecimal {
    
    int convert(string input) {
        int r = 0;
        for (auto c: input) {
            r *= 16;
            if (c - '0' < 10)
                r += c - '0';
            else if (c - 'a' < 6)
                r += c - 'a' + 10;
            else
                return 0;
        }
        return r;
    }

}
