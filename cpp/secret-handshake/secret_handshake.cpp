#include "secret_handshake.h"

#include <algorithm>

namespace secret_handshake {
    vector <string> commands(int n) {
        vector<string> r;
        if (n & 1) r.emplace_back("wink");
        if (n & 2) r.emplace_back("double blink");
        if (n & 4) r.emplace_back("close your eyes");
        if (n & 8) r.emplace_back("jump");
        if (n & 16) reverse(r.begin(), r.end());
        return r;
    }
}
