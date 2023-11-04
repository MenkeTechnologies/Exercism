class PerfectNumbers {
  static aliquotSum(n) {
    var sum = (1..(n/ 2)).
                where {|f| n % f == 0}.
                reduce(0) {|acc, f|
                  return acc + f
                }
    return sum
  }

  static classify(n) {
    if (n < 1) Fiber.abort("Classification is only possible for positive integers.")
    var sum = aliquotSum(n)
    if (n == 1 || sum < n) return "deficient"
    if (sum > n) return "abundant"
    return "perfect"
  }
}
