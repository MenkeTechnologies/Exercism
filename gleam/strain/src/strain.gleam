import gleam/list

pub fn keep(lst: List(t), f: fn(t) -> Bool) -> List(t) {
  filter(lst, f, [])
}

pub fn discard(lst: List(t), f: fn(t) -> Bool) -> List(t) {
  keep(lst, fn(e) { !f(e) })
}

fn filter(lst, f, res) {
  case lst {
    [] -> list.reverse(res)
    [hd, ..tl] ->
      case f(hd) {
        True -> filter(tl, f, [hd, ..res])
        _ -> filter(tl, f, res)
      }
  }
}
