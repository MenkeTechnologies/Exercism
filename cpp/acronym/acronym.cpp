#include "acronym.h"

#include <regex>

namespace acronym {

    static const regex regexp(R"(\b(\w)\w+)");

    string acronym(string s) {
        string r;
        smatch match;
        while (regex_search(s, match, regexp)) {
            r += toupper(match.str()[0]);
            s = match.suffix();
        }
        return r;
    }
}
