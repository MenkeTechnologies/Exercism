import gleam/string
import gleam/list
pub fn distance(strand1: String, strand2: String) -> Result(Int, Nil) {
  case string.length(strand1) == string.length(strand2) {
    False -> Error(Nil)
    True -> Ok({
      list.zip(string.to_graphemes(strand1), string.to_graphemes(strand2))
      |> list.filter(fn (pair){ let #(a,b) = pair; a != b }) |> list.length
	})
  }
}
