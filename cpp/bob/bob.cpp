#include "bob.h"

#include <algorithm>

using namespace std;
namespace bob {

    string hey(const string &s) {
        auto nows = find_if_not(s.rbegin(), s.rend(), [](unsigned char c) { return isspace(c); });

        if (nows == s.rend())
            return "Fine. Be that way!";

        bool none_lower = none_of(s.begin(), s.end(), [](unsigned char c) { return islower(c); });
        bool have_upper = any_of(s.begin(), s.end(), [](unsigned char c) { return isupper(c); });

        bool is_question = *nows == '?';

        if (none_lower && have_upper)
            if (is_question)
                return "Calm down, I know what I'm doing!";
            else
                return "Whoa, chill out!";
        else if (is_question)
            return "Sure.";
        else
            return "Whatever.";

    }
}
