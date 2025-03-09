#include "rotational_cipher.h"

namespace rotational_cipher {
    string rotate(string s, int n) {
        for (char & c : s) {
            if (islower(c) || isupper(c)) {
                char offset = isupper(c) ? 'A': 'a';
                c = (((c - offset) + n) % 26) + offset;
            }
        }
        return s;
    }
}
