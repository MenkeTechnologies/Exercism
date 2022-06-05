#include "word_count.h"

#include <regex>
#include <cctype>
#include <iterator>

namespace word_count {

    static const regex word_regex(R"(\b([\w']+)\b)");

    map<string, int> words(const string &words) {
        map<string, int> res;
        for (sregex_token_iterator i(words.cbegin(), words.cend(), word_regex), end; i != end; ++i) {
            string word = i->str();
            transform(word.begin(), word.end(), word.begin(), ::tolower);
            ++res[word];
        }
        return res;
    }
}
