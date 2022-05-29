#if !defined(QUEEN_ATTACK_H)
#define QUEEN_ATTACK_H

#include <utility>
#include <string>

namespace queen_attack {
    using coordinates = std::pair<int, int>;

    class chess_board {
        static constexpr int side_length = 8;
        coordinates coordinates_white;
        coordinates coordinates_black;

        bool is_within_bounds(coordinates c) const;

    public:
        explicit chess_board();

        explicit chess_board(coordinates white, coordinates black);

        coordinates white() const;

        coordinates black() const;

        explicit operator std::string() const;

        bool can_attack() const;
    };
}

#endif
