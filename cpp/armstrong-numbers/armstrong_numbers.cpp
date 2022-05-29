#include "armstrong_numbers.h"

#include <cmath>
#include <string>

using namespace std;
namespace armstrong_numbers {

    bool is_armstrong_number(int n) {

        const string &toString = to_string(n);
        const int digits = toString.length();
        int sum = 0;
        for (const auto &c: toString) {
            sum += pow(c - '0', digits);
        }
        return sum == n;
    }

}
