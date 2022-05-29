#include "etl.h"

namespace etl {

    map<char, int> transform(const map<int, vector<char>> &m) {
        auto r = map<char, int>();

        for (auto const &e: m) {
            auto const score = e.first;
            auto const &letters = e.second;
            for (auto const l: letters) {
                r[tolower(l)] = score;
            }
        }

        return r;

    }
}
