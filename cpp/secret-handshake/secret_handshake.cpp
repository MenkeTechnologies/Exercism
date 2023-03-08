#include "secret_handshake.h"

#include <algorithm>

namespace secret_handshake {
    vector<string> commands(int mask) {
        vector<string> r;
        if (mask & 1) r.emplace_back("wink");
        if (mask & 2) r.emplace_back("double blink");
        if (mask & 4) r.emplace_back("close your eyes");
        if (mask & 8) r.emplace_back("jump");
        if (mask & 16) reverse(r.begin(), r.end());
        return r;
    }
}
