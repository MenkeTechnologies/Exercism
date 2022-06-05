#if !defined(ATBASH_CIPHER_H)
#define ATBASH_CIPHER_H

#include <string>
#include <regex>
#include <cctype>

using namespace std;
namespace atbash_cipher {

    string encode(string);

    string decode(string);
}
#endif
