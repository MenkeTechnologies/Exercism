import gleam/list
import gleam/string
import gleam/result

pub fn to_rna(dna: String) -> Result(String, Nil) {
  dna
  |> string.to_graphemes
  |> list.try_map(convert)
  |> result.map(string.concat)
}
fn convert(base: String) -> Result(String, Nil) {
  case base {
    "G" -> Ok("C")
    "C" -> Ok("G")
    "T" -> Ok("A")
    "A" -> Ok("U")
    _ -> Error(Nil)
  }
}

