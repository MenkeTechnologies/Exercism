import gleam/string
import gleam/list

pub fn find_anagrams(target: String, candidates: List(String)) -> List(String) {
  let lc_target = string.lowercase(target)
  let lc_sort = to_sorted_letters(lc_target)
  candidates |> list.filter(fn(candidate) {
              let lc = string.lowercase(candidate)
                  lc != lc_target && to_sorted_letters(lc) == lc_sort
                    })
}

fn to_sorted_letters(word: String) -> List(String) {
  word
  |> string.to_graphemes
  |> list.sort(string.compare)
}
