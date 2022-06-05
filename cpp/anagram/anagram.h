#ifndef ANAGRAM_H
#define ANAGRAM_H

#include <string>
#include <vector>

using namespace std;
namespace anagram {
    class anagram {
    private:
        string lc;
        string letters;
    public:
        anagram(const string &word);
        vector <string> matches(const vector <string> &cands);

        void tolower(string &basicString);
    };
}
#endif
