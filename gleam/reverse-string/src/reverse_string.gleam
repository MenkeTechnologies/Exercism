import gleam/string
import gleam/list

pub fn reverse(s: String) -> String {
  s |> string.to_graphemes() |> list.reverse |> string.concat()
}
