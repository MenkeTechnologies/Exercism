import gleam/list

pub type Error {
  InvalidBase(Int)
  InvalidDigit(Int)
}

pub fn rebase(digits digits: List(Int), input_base input_base: Int, output_base output_base: Int) -> Result(List(Int), Error) {
  case digits, input_base, output_base {
    _, _, output_base if output_base < 2 -> Error(InvalidBase(output_base))
    _, input_base, _ if input_base < 2 -> Error(InvalidBase(input_base))
    [], _, _ -> Ok([0])
    _, _, _ ->
      case list.find(digits, fn(digit) { digit < 0 || digit >= input_base }) {
        Ok(digit) -> Error(InvalidDigit(digit))
        Error(Nil) -> {
		  let sum = digits |> digits_to_integer(input_base)
          case sum {
              0 -> [0] |> Ok
              _ -> sum |> integer_to_digits(output_base, []) |> Ok
          }

        }
      }
  }
}
fn digits_to_integer(digits, input_base) {
  digits |> list.fold(0, fn(acc, n) { acc * input_base + n })
}

fn integer_to_digits(value, output_base, acc) {
  case value {
    0 -> acc
    value ->
      integer_to_digits(
        value / output_base,
        output_base,
        [value % output_base, ..acc],
      )
  }
}

