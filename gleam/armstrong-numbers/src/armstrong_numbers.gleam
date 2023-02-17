import gleam/int
import gleam/list

fn int_power(orig: Int, exp: Int) -> Int {
    list.range(1, exp) |> list.fold(1, fn(acc,_n){ acc * orig})
}

pub fn is_armstrong_number(number: Int) -> Bool {
  assert Ok(digits) = int.digits(number, 10)
  let number_of_digits = list.length(digits)
  number == digits
    |> list.map(int_power(_, number_of_digits))
    |> int.sum
}
