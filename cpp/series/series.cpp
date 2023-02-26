#include "series.h"
#include <stdexcept>

vector<string> series::slice(const string &s, int n) {
    if (n > static_cast<int>(s.length()) || n < 1) throw domain_error("Slice length must 1 < n <= s.length");
    vector<string> res;
    for (size_t i = 0; i <= s.length() - n; ++i) res.emplace_back(s.substr(i, n));
    return res;
}
