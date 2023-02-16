import gleam/map.{Map}
import gleam/string
import gleam/list
import gleam/option

pub fn nucleotide_count(dna: String) -> Result(Map(String, Int), Nil) {
  dna
  |> string.to_graphemes()
  |> list.try_fold(
    from: map.from_list([#("A", 0), #("C", 0), #("G", 0), #("T", 0)]),
    with: fn(acc, c) {
      case map.has_key(acc, c) {
        True ->
          Ok(map.update(
            acc,
            c,
            fn(cnt) { option.unwrap(cnt, 0) + 1 },
          ))
        False -> Error(Nil)
      }
    },
  )
}
