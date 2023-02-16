import gleam/int
import gleam/list

pub type Classification {
  Perfect
  Abundant
  Deficient
}
pub type Error {
  NonPositiveInt
}
pub fn classify(n: Int) -> Result(Classification, Error) {
  case n {
    n if n < 1 -> Error(NonPositiveInt)
    1 -> Ok(Deficient)
    n -> {
      case int.sum(factors(n)) {
        sum if sum == n -> Ok(Perfect)
        sum if sum > n -> Ok(Abundant)
        sum if sum < n -> Ok(Deficient)
      }
    }
  }
}
fn factors(n) {
  list.range(1, n / 2)
  |> list.filter(fn(i) { n % i == 0 })
}
