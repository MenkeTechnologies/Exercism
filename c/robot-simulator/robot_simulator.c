#include "robot_simulator.h"

robot_status_t robot_create(robot_direction_t direction, int x, int y) {
    return (robot_status_t) {
            .direction = direction,
            .position = (robot_position_t) {.x = x, .y = y}
    };
}

void robot_move(robot_status_t *robot, const char *commands) {

    static int incx[] = {0, 1, 0, -1};
    static int incy[] = {1, 0, -1, 0};

    for (const char *c = commands; *c; ++c) {
        switch (*c) {
            case 'R' :
                robot->direction = (robot->direction + 1) % 4;
                break;
            case 'L' :
                robot->direction = (robot->direction + 3) % 4;
                break;
            case 'A' :
                robot->position = (robot_position_t) {
                        .x = robot->position.x + incx[robot->direction],
                        .y = robot->position.y + incy[robot->direction]
                };
                break;
        }
    }
}
