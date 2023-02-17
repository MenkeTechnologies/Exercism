import gleam/string
import gleam/list

pub fn score(s: String) -> Int {
  s |> string.uppercase |> string.to_graphemes |> list.map(points(_)) |> list.fold(0, fn(acc,n){ acc + n })
}

fn points(c: String) -> Int {
      case c {
            "A" | "E" | "I" | "O" | "U" | "L" | "N" | "R" | "S" | "T" -> 1
            "D" | "G" -> 2
            "B" | "C" | "M" | "P" -> 3
            "F" | "H" | "V" | "W" | "Y" -> 4
            "K" -> 5
            "J" | "X" -> 8
            "Q" | "Z" -> 10
    }
}
