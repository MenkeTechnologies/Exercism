#if !defined(ROBOT_NAME_H)
#define ROBOT_NAME_H

#include <string>
#include <vector>
#include <iostream>
#include <random>
#include <algorithm>
#include <memory>

using namespace std;
namespace robot_name {

    class robot {
    private:
        string _name;
    public:
        robot();

        string name() const;

        void reset();
    };
}

#endif
