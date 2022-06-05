#include "luhn.h"

#include <vector>
#include <algorithm>

namespace luhn {

    bool valid(const string &s) {
        vector<int> digits;
        for (char c: s) {
            if (isdigit(c)) {
                digits.push_back(c - '0');
            } else if (!isspace(c)) {
                return false;
            }
        }

        if (digits.size() < 2) {
            return false;
        }
        reverse(digits.begin(), digits.end());
        
        int cnt = 0;
        int sum = 0;
        for (int digit: digits) {
            if (cnt % 2 == 1) {
                digit = 2 * digit;
                if (digit > 9) {
                    digit -= 9;
                }
            }
            sum += digit;
            ++cnt;
        }
        return sum % 10 == 0;
    }
}
