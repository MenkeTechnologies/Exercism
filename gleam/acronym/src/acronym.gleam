import gleam/list
import gleam/regex
import gleam/result
import gleam/string

pub fn abbreviate(phrase s: String) -> String {
  let assert Ok(re) = regex.from_string("[^\\w\\s\\-\\']")
  regex.split(with: re, content: s)
  |> string.join("")
  |> string.replace("_", "")
  |> string.replace("-", " ")
  |> string.split(" ")
  |> list.map(string.first)
  |> result.values
  |> string.join("")
  |> string.uppercase
}
