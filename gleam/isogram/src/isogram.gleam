import gleam/string
import gleam/list
import gleam/regex

pub fn is_isogram(phrase phrase: String) -> Bool {
  !check(with: regex.from_string("([[:alpha:]])\1"), content: phrase)
}

