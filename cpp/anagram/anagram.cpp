#include "anagram.h"

#include "anagram.h"
#include <algorithm>
#include <cctype>

namespace anagram {
    anagram::anagram(const string &word) {
        lc = word;
        tolower(lc);
        letters = lc;
        sort(letters.begin(), letters.end());
    }

    void anagram::tolower(string &basicString) { transform(basicString.begin(), basicString.end(), basicString.begin(), ::tolower); }

    vector <string> anagram::matches(const vector <string> &cands) {
        vector <string> r;
        for (const string &s: cands) {
            string dup = s;
            tolower(dup);
            if (dup == lc) continue;
            sort(dup.begin(), dup.end());
            if (dup == letters) r.emplace_back(s);
        }
        return r;
    }
}
