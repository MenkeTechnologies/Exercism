#if !defined(GRADE_SCHOOL_H)
#define GRADE_SCHOOL_H

#include <map>
#include <string>
#include <vector>

using namespace std;
namespace grade_school {
    class school {
    public:
        const map<int, vector<string>> &roster() const;

        const vector<string> &grade(int grade_number) const;

        void add(string name, int grade);

    private:
        map<int, vector<string>> roster_;
    };
}

#endif
