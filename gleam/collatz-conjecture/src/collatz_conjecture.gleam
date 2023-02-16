pub type Error {
  NonPositiveNumber
}
pub fn steps(n: Int) -> Result(Int, Error) {
  case n > 0 {
      True -> Ok(aux(n, 0))
      False -> Error(NonPositiveNumber)
    }
}
fn aux(n, acc) {
  case n, n % 2 {
      1, _ -> acc
      n, 0 -> aux(n / 2, acc + 1)
      n, _ -> aux(3 * n + 1, acc + 1)
    }
}

