#include "atbash_cipher.h"

namespace atbash_cipher {
    string letters = "abcdefghijklmnopqrstuvwxyz";

    char invert(char c) {
        if (!isalpha(c))
            return c;
        return letters[letters.size() - letters.find_first_of(c) - 1];
    }

    string encode(string input) {
        input = regex_replace(input, regex(R"([\W])"), "");
        for (char &c: input) c = invert(tolower(c));
        for (auto pos = input.begin() + 5; pos < input.end(); pos += 6)
            input.insert(pos, ' ');
        return input;
    }

    string decode(string input) {
        for (char &c: input) c = invert(c);
        return regex_replace(input, regex(R"([\s])"), "");
    }
}  
