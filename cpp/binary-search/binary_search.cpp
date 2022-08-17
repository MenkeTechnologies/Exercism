#include "binary_search.h"
#include <stdexcept>
#include <string>

size_t binary_search::find(const vector<int> &data, int target) {
    if (data.empty()) throw domain_error("Empty vector provided");

    int lo = 0;
    int hi = data.size() - 1;

    while (lo <= hi) {
        size_t mid = (lo + hi) / 2;
        if (data.at(mid) == target) {
            return mid;
        } else if (data.at(mid) < target) {
            lo = mid + 1;
        } else {
            hi = mid - 1;
        }
    }
    throw domain_error(to_string(target) + " not in provided vector");
}
