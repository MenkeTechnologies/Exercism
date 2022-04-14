#include "isogram.h"

#include <unordered_set>

using namespace std;
namespace isogram {

    bool is_isogram(const std::string &s) {
        unordered_set<char> seen;

        for (auto c: s) {
            if (isalpha(c) && !seen.insert(tolower(c)).second) {
                return false;
            }
        }

        return true;
    }
}  // namespace isogram
