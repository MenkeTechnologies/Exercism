#if !defined(PANGRAM_H)
#define PANGRAM_H

#include <string>
using std::string;

namespace pangram {
    bool is_pangram(const string &sentence);
}

#endif // PANGRAM_H
