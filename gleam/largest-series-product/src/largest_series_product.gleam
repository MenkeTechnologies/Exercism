import gleam/list
import gleam/int
import gleam/result
import gleam/string

pub fn largest_product(digits: String, span: Int) -> Result(Int, Nil) {
  case span {
    0 -> Ok(1)
    _ ->
      digits
      |> string.to_graphemes
      |> list.try_map(int.parse)
      |> result.unwrap([])
      |> list.window(span)
      |> list.map(int.product)
      |> list.sort(int.compare)
      |> list.last
  }
}
