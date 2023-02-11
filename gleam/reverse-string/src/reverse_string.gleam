import gleam/string
import gleam/list

pub fn reverse(value: String) -> String {
  value |> string.to_graphemes() |> list.reverse |> string.concat()
}
