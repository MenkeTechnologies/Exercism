#include "phone_number.h"
#include <regex>

namespace phone_number {

    phone_number::phone_number(const string &s) {
        regex re{R"(^\D*(?:\+?1)?\D*([2-9]\d{2})\D*([2-9]\d{2})\D*(\d{4})\D*$)"};
        smatch sm;
        if (regex_match(s, sm, re)) {
            _num = sm[1].str() + sm[2].str() + sm[3].str();
            _area_code = sm[1].str();
            _str = "(" + sm[1].str() + ") " + sm[2].str() + "-" + sm[3].str();
        } else {
            throw domain_error("regex didn't match");
        }
    }

}
