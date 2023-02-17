import gleam/list
import gleam/int

pub fn scores(high_scores: List(Int)) -> List(Int) {
  high_scores
}
pub fn latest(high_scores: List(Int)) -> Result(Int, Nil) {
  high_scores |> list.last
}
pub fn personal_best(high_scores: List(Int)) -> Result(Int, Nil) {
  high_scores |> sort_descending |> list.first
}
pub fn personal_top_three(high_scores: List(Int)) -> List(Int) {
  high_scores |> sort_descending |> list.take(3)
}
fn sort_descending(high_scores: List(Int)) -> List(Int) {
  high_scores |> list.sort(int.compare) |> list.reverse
}

