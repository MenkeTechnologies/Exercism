#include "isbn_verifier.h"
#include <algorithm>

bool valid(string &s) {
    s.erase(remove(s.begin(), s.end(), '-'), s.end());
    if ((int) s.size() != 10) return false;
    string characters = "abcdefghijklmnopqrstuvwxyz";
    for (size_t i = 0; i < s.size() - 1; ++i) {
        if (characters.find((char) tolower(s[i])) != string::npos)
            return false;
    }
    return true;
}

namespace isbn_verifier {
    bool is_valid(string s) {
        if (!valid(s)) return false;

        int multiplier = 10;
        int sum = 0;
        for (size_t i = 0; i < s.size(); ++i, --multiplier) {
            int digit = s[i] == 'X' ? 10 : (int) (s[i] - '0');
            sum += digit * multiplier;
        }
        return sum % 11 == 0;
    }
}
