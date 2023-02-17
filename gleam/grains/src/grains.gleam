import gleam/list
import gleam/result

pub type Error {
  InvalidSquare
}

fn int_power(orig: Int, exp: Int) -> Int {
    case exp {
        0 -> 1
        _ -> list.range(1, exp) |> list.fold(1, fn(acc,_n){ acc * orig})
    }
}

pub fn square(square: Int) -> Result(Int, Error) {
  case square {
    square if square > 0 && square < 65 -> Ok(int_power(2, square - 1))
    _ -> Error(InvalidSquare)
  }
}
pub fn total() -> Int {
  list.range(1, 64) |> list.map(square(_)) |> list.map(result.unwrap(_, -1)) |> list.fold(0, fn(acc, n){ acc + n})
}
