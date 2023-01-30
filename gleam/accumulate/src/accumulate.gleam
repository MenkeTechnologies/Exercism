pub fn accumulate(list: List(a), f: fn(a) -> b) -> List(b) {
  case list {
    [h, ..t] -> [f(h), ..accumulate(t, f)]
    [] -> []
  }
}
