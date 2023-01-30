import gleam/list
import gleam/string
pub fn is_pangram(sentence: String) -> Bool {
  let alphabet = "abcdefghijklmnopqrstuvwxyz"
  let lc = string.lowercase(sentence)
  alphabet
  |> string.to_graphemes
  |> list.all(string.contains(lc, _))
}

