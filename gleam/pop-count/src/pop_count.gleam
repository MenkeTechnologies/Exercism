import gleam/int
import gleam/list
import gleam/result

pub fn egg_count(number: Int) -> Int {
  int.digits(number, 2) |> result.unwrap([]) |> list.filter(fn(b) { b > 0}) |> list.length
}
