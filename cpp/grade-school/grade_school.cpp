#include "grade_school.h"

#include <algorithm>

namespace grade_school {

    vector<string> empty;
    
    const map<int, vector<string>> &school::roster() const {
        return roster_;
    }

    const vector<string> &school::grade(int grade_number) const {

        auto it = roster_.find(grade_number);
        if (it == roster_.end())
            return empty;
        return it->second;

    }

    void school::add(string name, int grade) {

        auto &students = roster_[grade];
        students.insert(
                upper_bound(begin(students), end(students), name),
                name);

    }
}
