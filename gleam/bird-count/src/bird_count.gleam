import gleam/int
import gleam/list
import gleam/result

pub fn today(days: List(Int)) -> Int {
  days |> list.first |> result.unwrap(0)
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  [today(days) + 1, ..result.unwrap(list.rest(days), [])]
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  list.any(days, fn(d) { d == 0 })
}

pub fn total(days: List(Int)) -> Int {
  int.sum(days)
}

pub fn busy_days(days: List(Int)) -> Int {
  days |> list.filter(fn(d) { d >= 5 }) |> list.length
}
