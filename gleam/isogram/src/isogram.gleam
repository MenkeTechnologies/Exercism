import gleam/regex
import gleam/string
import gleam/list
import gleam/set

pub fn is_isogram(phrase phrase: String) -> Bool {
  assert Ok(re) = regex.from_string("[a-z]*")
  let matches = regex.scan(with: re, content: string.lowercase(phrase))
    |> list.map(fn(m) {m.content})
    |> string.concat()
    |> string.to_graphemes()
  list.length(matches) == set.size(set.from_list(matches))
}
