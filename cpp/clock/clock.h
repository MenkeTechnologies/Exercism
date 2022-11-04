#pragma once

#include <string>
#include <sstream>
#include <iomanip>

using namespace std;

namespace date_independent {
    class clock {
        int minutes;
    public:
        explicit clock(int min) {
            if (min < 0) minutes = 1440 + min % 1440;
            else minutes = min % 1440;
        }

        static clock at(int hours, int minutes) { return clock(hours * 60 + minutes); }

        [[nodiscard]] clock plus(int min) const { return clock(minutes + min); }

        explicit operator string() const {
            ostringstream ss;
            ss << setfill('0') << setw(2) << minutes / 60 << ":" << setw(2) << minutes % 60;
            return ss.str();
        }

        bool operator==(const clock o) const { return minutes == o.minutes; }

        bool operator!=(const clock o) const { return minutes != o.minutes; }
    };
}
