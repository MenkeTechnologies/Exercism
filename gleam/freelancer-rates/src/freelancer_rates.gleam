import gleam/int
import gleam/float

pub fn daily_rate(hourly_rate: Int) -> Float {
  8.0 *. int.to_float(hourly_rate)
}
pub fn apply_discount(before_discount: Int, discount: Float) -> Float {
  int.to_float(before_discount) *. {100.0 -. discount} /. 100.0
}

fn discounted_daily_rate(hourly_rate: Int, discount: Float) -> Float {
  8.0 *. apply_discount(hourly_rate, discount)
}

pub fn monthly_rate(hourly_rate: Int, discount: Float) -> Int {
  float.ceiling(22.0 *. discounted_daily_rate(hourly_rate, discount))
  |> float.truncate()
}

pub fn days_in_budget(budget: Int, hourly_rate: Int, discount: Float) -> Float {
  let daily_rate = discounted_daily_rate(hourly_rate, discount)
  float.floor(int.to_float(budget) /. daily_rate)
}

