#include "atbash_cipher.h"

namespace atbash_cipher {
    static const regex nonw = regex(R"(\W)");
    static const regex ws = regex(R"(\s)");
    static const string letters = "abcdefghijklmnopqrstuvwxyz";

    char tr(char c) {
        if (!isalpha(c))
            return c;
        return letters[letters.size() - letters.find_first_of(c) - 1];
    }
    
    string encode(string input) {
        input = regex_replace(input, nonw, "");
        for (char &c: input) c = tr(tolower(c));
        for (auto pos = input.begin() + 5; pos < input.end(); pos += 6)
            input.insert(pos, ' ');
        return input;
    }

    string decode(string input) {
        for (char &c: input) c = tr(c);
        return regex_replace(input, ws, "");
    }
}  
