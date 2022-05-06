#include <stdlib.h>
#include "queen_attack.h"

int is_invalid_position(position_t q1) {
    return q1.row > 7 || q1.row < 0 || q1.column < 0 || q1.column > 7;
}

int is_same_pos(position_t q1, position_t q2) {
    return q1.row == q2.row && q1.column == q2.column;
}

attack_status_t can_attack(position_t queen_1, position_t queen_2) {

    if (is_same_pos(queen_1, queen_2) || is_invalid_position(queen_1) || is_invalid_position(queen_2))
        return INVALID_POSITION;

    int dx = abs(queen_1.column - queen_2.column);
    int dy = abs(queen_1.row - queen_2.row);

    if (dx == 0 || dy == 0 || dx == dy) return CAN_ATTACK;

    return CAN_NOT_ATTACK;
}
