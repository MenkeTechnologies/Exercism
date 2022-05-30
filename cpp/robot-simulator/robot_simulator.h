#if !defined(ROBOT_SIMULATOR_H)
#define ROBOT_SIMULATOR_H


#include <string>
using namespace std;

namespace robot_simulator {
    using Position = pair<int, int>;
    enum Bearing {
        NORTH, EAST, SOUTH, WEST
    };

    class Robot {
        Position position_ = {0, 0};
        Bearing bearing_ = Bearing::NORTH;
    public:
        Robot() = default;

        Robot(Position position, Bearing bearing);

        Position get_position() const;

        Bearing get_bearing() const;

        void advance();

        void turn_left();

        void turn_right();

        void execute_sequence(const string &sequence);
    };
}

#endif
