pub fn append(first first: List(a), second second: List(a)) -> List(a) {
  first |> foldr(second, fn(acc, n) {[n, ..acc]})
}
pub fn concat(lists: List(List(a))) -> List(a) {
  lists |> foldr([], fn(acc, n) { n |> append(acc)})
}
pub fn filter(lst: List(a), f: fn(a) -> Bool) -> List(a) {
  lst |> foldr([], fn(acc, n) {
      case f(n) {
        True -> [n, ..acc]
        _ -> acc
      }
    }
  )
}
pub fn length(lst: List(a)) -> Int {
  lst |> foldl(0, fn(acc, _n) { acc + 1 })
}
pub fn map(lst: List(a), f: fn(a) -> b) -> List(b) {
  lst |> reverse |> foldl([], fn(acc, n) { [n |> f, ..acc] })
}
pub fn foldl(over lst: List(a), from init: b, with f: fn(b, a) -> b) -> b {
  case lst {
    [] -> init
    [n, ..rest] -> rest |> foldl(init |> f(n), f)
  }
}
pub fn foldr(over lst: List(a), from init: b, with f: fn(b, a) -> b) -> b {
  case lst {
    [] -> init
    [n, ..rest] -> rest |> foldr(init, f) |> f(n)
  }
}
pub fn reverse(lst: List(a)) -> List(a) {
  lst |> foldl([], fn(acc, n) { [n, ..acc] })
}

