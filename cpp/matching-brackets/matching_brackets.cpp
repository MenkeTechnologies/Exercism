#include "matching_brackets.h"
#include <stack>
#include <unordered_set>
#include <map>

namespace matching_brackets {
    static const auto closing_brackets = unordered_set<char>{'}', ']', ')'};
    static const auto opening_brackets = map<char, char>
            {{'{', '}'},
             {'[', ']'},
             {'(', ')'}};

    auto check(const string &s) -> bool {
        auto stk = stack<char>{};
        for (auto c: s) {
            if (opening_brackets.find(c) != end(opening_brackets)) {
                stk.push(c);
            } else if (closing_brackets.find(c) != end(closing_brackets)) {
                if (stk.empty() || c != opening_brackets.at(stk.top())) return false;
                stk.pop();
            }
        }
        return stk.empty();
    }

}
