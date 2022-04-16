#if !defined(NUCLEOTIDE_COUNT_H)
#define NUCLEOTIDE_COUNT_H

#include <string>
#include <map>
#include <stdexcept>

using namespace std;
namespace nucleotide_count {
    class counter {
        map<char, int> dict;

    public:
        explicit counter(const std::string &s) :
                dict(map<char, int>({
                                            {'A', 0},
                                            {'T', 0},
                                            {'C', 0},
                                            {'G', 0}
                                    })) {
            for (char c: s) {
                if (dict.find(c) == dict.end()) {
                    throw invalid_argument(string("invalid nucleotide: ") + c);
                }
                ++dict[c];

            }
        }


        map<char, int> nucleotide_counts() const {
            return dict;
        }

        int count(char c) const {
            if (dict.find(c) == dict.end()) {
                throw invalid_argument(string("invalid nucleotide: ") + c);
            }

            return dict.at(c);
        }
    };


}

#endif // NUCLEOTIDE_COUNT_H
