import gleam/iterator.{map, range, to_list}
import gleam/int.{sum}

pub fn square_of_sum(n: Int) -> Int {
  let sum =
    range(from: 1, to: n)
    |> to_list
    |> sum
  sum * sum
}
pub fn sum_of_squares(n: Int) -> Int {
  range(from: 1, to: n)
  |> map(fn(n) { n * n })
  |> to_list
  |> sum
}
pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}

