#include "nucleotide_count.h"

using namespace std;

map<char, int> nucleotide_count::count(const string &s) {
    map<char, int> dict({
                                {'A', 0},
                                {'T', 0},
                                {'C', 0},
                                {'G', 0}
                        });
    for (const char &c: s) {
        if (dict.find(c) == dict.end()) {
            throw invalid_argument(string("invalid nucleotide: ") + c);
        }
        ++dict[c];

    }

    return dict;
}
