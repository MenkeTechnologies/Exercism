module main

fn rebase(input_base int, digits []int, output_base int) ![]int {
  if input_base < 2 {
    return error('input base must be >= 2')
  }
  if output_base < 2 {
    return error('output base must be >= 2')
  }
  mut value := 0
  for digit in digits {
    if digit < 0 || digit >= input_base {
      return error('all digits must satisfy 0 <= d < input base')
    }
    value = value * input_base + digit
  }
  if value == 0 { return [0] }
  mut res := []int{}

  for value > 0 {
    res << value % output_base
    value /= output_base
  }
  return res.reverse()
}
