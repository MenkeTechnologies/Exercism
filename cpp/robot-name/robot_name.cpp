#include "robot_name.h"

using namespace std;

namespace robot_name {
    vector<string> robots;

    robot::robot() {
        reset();
    }

    string robot::name() const {
        return _name;
    }

    string generate_name() {
        string name;
        random_device r;
        mt19937_64 rng(r());
        uniform_int_distribution<int> rand_digit('0', '9');
        uniform_int_distribution<int> rand_letter('A', 'Z');
        name.push_back(rand_letter(rng));
        name.push_back(rand_letter(rng));
        name.push_back(rand_digit(rng));
        name.push_back(rand_digit(rng));
        name.push_back(rand_digit(rng));
        return name;
    }

    void robot::reset() {
        do {
            _name = generate_name();
        } while (find(robots.begin(), robots.end(), _name) != robots.end());
        robots.push_back(_name);
    }

}
