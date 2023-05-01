import gleam/list

pub fn factors(val: Int) -> List(Int) {
  aux(val, 2, [])
}
fn aux(val: Int, prime: Int, factors: List(Int)) -> List(Int) {
  case val, val % prime == 0 {
    1, _ -> list.reverse(factors)
    _, True -> aux(val / prime, prime, [prime, ..factors])
    _, _ -> aux(val, prime + 1, factors)
  }
}

