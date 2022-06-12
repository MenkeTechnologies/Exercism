#if !defined(PHONE_NUMBER_H)
#define PHONE_NUMBER_H

#include <string>

using namespace std;

namespace phone_number {
    class phone_number {
        string _str, _num, _area_code;
    public:
        phone_number(const string &);
        operator string() const {
            return _str;
        }
        string number() const {
            return _num;
        }
        string area_code() const {
            return _area_code;
        }
    };

}

#endif
