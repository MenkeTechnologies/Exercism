#pragma once

#include <string>
#include <regex>
using namespace std;

namespace isogram {

    bool is_isogram(const string &);

    const regex re("(\\w).*\\1", regex_constants::icase);

}
