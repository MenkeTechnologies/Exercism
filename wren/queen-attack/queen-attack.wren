class QueenAttack {
  static new() { this.new({}) }

  valid(pos) { (0..7).contains(pos[0]) && (0..7).contains(pos[1]) }

  construct new(pieces) {

    if (!pieces.containsKey("black")) pieces["black"] = [0,3]
    if (!pieces.containsKey("white")) pieces["white"] = [7,3]

    _black = pieces["black"]
    _white = pieces["white"]

    if (!valid(_black) || !valid(_white)) {
      Fiber.abort("Queen must be placed on the board")
    }
    if (_black[0] == _white[0] && _black[1] == _white[1]) {
      Fiber.abort("Queens cannot share the same space")
    }
  }
  black { _black }
  white { _white }

  canAttack {
    var dx = (white[0] - black[0]).abs
    var dy = (white[1] - black[1]).abs
    return dx == 0 || dy == 0 || dx == dy
  }

  toString {
    var board = (0..7).map {|i| List.filled(8, "_")}.toList
    board[white[0]][white[1]] = "W"
    board[black[0]][black[1]] = "B"
    return board.map {|row| row.join(" ")}.join("\n")
  }
}
