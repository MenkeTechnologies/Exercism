#include <string.h>
#include <ctype.h>
#include "isogram.h"

bool is_isogram(const char *phrase) {
    bool seen[26];
    memset(seen, 0, sizeof seen);

    if (!phrase) {
        return false;
    }

    for (const char *c = phrase; *c; ++c) {
        if (isalpha(*c)) {
            int i = tolower(*c) - 'a';
            if (seen[i]) {
                return false;
            }
            seen[i] = true;
        }
    }
    return true;
}
