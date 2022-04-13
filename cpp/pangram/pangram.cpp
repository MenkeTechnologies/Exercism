#include "pangram.h"

#include <unordered_set>

using namespace std;
namespace pangram {

    bool is_pangram(const string &sentence) {
        unordered_set<char> charsInSentence;
        for (const auto c: sentence)
            if (isalpha(c)) charsInSentence.emplace(tolower(c));

        return charsInSentence.size() == 26;

    }
}
