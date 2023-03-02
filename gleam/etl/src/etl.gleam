import gleam/list
import gleam/map.{Map}
import gleam/string

type Legacy =
  Map(Int, List(String))

type NewFormat =
  Map(String, Int)

pub fn transform(legacy: Legacy) -> NewFormat {
  legacy
  |> map.fold(map.new(), convert)
}

fn convert(scores: NewFormat, value: Int, letters: List(String)) {
  letters
  |> list.map(string.lowercase)
  |> list.fold(scores, fn(acc, c) { insert(acc, c, value) })
}

fn insert(scores: NewFormat, c: String, value: Int) {
  scores
  |> map.insert(string.lowercase(c), value)
}
