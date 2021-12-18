#pragma once
#include <string>
using namespace std;
namespace reverse_string {
    inline string reverse_string(const string& src) {
        return {src.rbegin(), src.rend()};
    }
}
