import gleam/int

pub type Position {
  Position(row: Int, column: Int)
}

pub type Error {
  RowTooSmall
  RowTooLarge
  ColumnTooSmall
  ColumnTooLarge
}

pub fn create(queen: Position) -> Result(Nil, Error) {
  let Position(row: r, column: c) = queen
  case r, c {
    row, _column if row < 0 -> Error(RowTooSmall)
    row, _column if row > 7 -> Error(RowTooLarge)
    _row, column if column < 0 -> Error(ColumnTooSmall)
    _row, column if column > 7 -> Error(ColumnTooLarge)
    _row, _column -> Ok(Nil)
  }
}

pub fn can_attack(black_queen black_queen: Position, white_queen white_queen: Position) -> Bool {
  let dx = distance(black_queen.column, white_queen.column)
  let dy = distance(black_queen.row, white_queen.row)

  dx == 0 || dy == 0 || dx == dy
}

fn distance(a: Int, b: Int) -> Int {
  int.absolute_value(a - b)
}
