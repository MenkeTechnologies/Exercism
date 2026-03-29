#include <string>
#include <map>
#include "raindrops.h"

using namespace std;

map<int, string> m = {{3, "Pling"},
                      {5, "Plang"},
                      {7, "Plong"}};

namespace raindrops {

    string convert(int n) {
        string r;

        for (auto[k, v]: m)
            if (n % k == 0) r += v;

        if (r.empty()) r = to_string(n);

        return r;

    }

}
