import gleam/list
import gleam/string

pub fn convert(number: Int) -> String{
  let #(_, roman) =
    [
          #("M", 1000),
          #("CM", 900),
          #("D", 500),
          #("CD", 400),
          #("C", 100),
          #("XC", 90),
          #("L", 50),
          #("XL", 40),
          #("X", 10),
          #("IX", 9),
          #("V", 5),
          #("IV", 4),
          #("I", 1)
        ]
    |> list.fold(#(number, ""), apply_roman_numeral_rule)
  roman
}
fn apply_roman_numeral_rule(acc, pair) {
  let #(sym, val) = pair
  let #(number, roman) = acc
  let n = number / val
  let number = number % val
  let roman = roman <> string.repeat(sym, n)
  #(number, roman)
}
