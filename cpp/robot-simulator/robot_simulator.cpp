#include "robot_simulator.h"

using namespace std;

namespace robot_simulator {

    Robot::Robot(Position position, Bearing bearing)
            : position_(position), bearing_(bearing) {}

    Position Robot::get_position() const {
        return position_;
    }

    Bearing Robot::get_bearing() const {
        return bearing_;
    }

    void Robot::advance() {
        switch (bearing_) {
            case Bearing::SOUTH:
                --position_.second;
                break;
            case Bearing::NORTH:
                ++position_.second;
                break;
            case Bearing::WEST:
                --position_.first;
                break;
            case Bearing::EAST:
                ++position_.first;
                break;
        }
    }

    void Robot::turn_left() {
        bearing_ = static_cast<Bearing>((static_cast<int>(bearing_) + 3) % 4);
    }

    void Robot::turn_right() {
        bearing_ = static_cast<Bearing>((static_cast<int>(bearing_) + 1) % 4);
    }

    void Robot::execute_sequence(const std::string &sequence) {
        for (auto c: sequence) {
            switch (c) {
                case 'A':
                    advance();
                    break;
                case 'L':
                    turn_left();
                    break;
                case 'R':
                    turn_right();
                    break;
            }
        }
    }

}
