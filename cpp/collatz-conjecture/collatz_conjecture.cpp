#include "collatz_conjecture.h"

#include <stdexcept>

using namespace std;

namespace collatz_conjecture {

    int steps(int n) {

        if (n <= 0) throw domain_error("");

        int cnt = 0;

        while (n > 1) {
            if (n % 2 == 0) {
                n /= 2;
            } else {
                n = 3 * n + 1;
            }
            ++cnt;
        }

        return cnt;
    }
}
