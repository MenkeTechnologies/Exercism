#include "queen_attack.h"

using namespace std;
namespace queen_attack {

    chess_board::chess_board() :
            chess_board::chess_board(pair{0, 3}, pair{7, 3}) {}

    chess_board::chess_board(coordinates white, coordinates black) :
            coordinates_white(white),
            coordinates_black(black) {
        if (!is_within_bounds(white) || !is_within_bounds(black)) {
            throw domain_error("One of the queens is out of board");
        }
        if (white == black) {
            throw domain_error("Queen positions must be distinct");
        }
    }

    bool chess_board::is_within_bounds(coordinates c) const {
        return c.first < side_length && c.first >= 0 && c.second < side_length && c.second >= 0;
    }

    coordinates chess_board::white() const {
        return coordinates_white;
    }

    coordinates chess_board::black() const {
        return coordinates_black;
    }

    chess_board::operator string() const {
        char board[8][8]{};
        board[coordinates_white.first][coordinates_white.second] = 'W';
        board[coordinates_black.first][coordinates_black.second] = 'B';
        string str;
        for (int i = 0; i < 8; ++i) {
            for (int j = 0; j < 8; ++j) {
                str += board[i][j] ? board[i][j] : '_';
                str += j != 7 ? ' ' : '\n';
            }
        }
        return str;
    }

    bool chess_board::can_attack() const {
        int dy = abs(coordinates_black.second - coordinates_white.second);
        int dx = abs(coordinates_black.first - coordinates_white.first);
        return dx == 0 || dy == 0 || dy == dx;
    }
}
