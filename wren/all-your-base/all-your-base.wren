class AllYourBase {
  static rebase(inputBase, digits, outputBase) {
    if (inputBase < 2) {
      Fiber.abort("input base must be >= 2")
    }
    if (outputBase < 2) {
      Fiber.abort("output base must be >= 2")
    }
    var sum = 0
    for (digit in digits) {
      if (digit < 0 || digit >= inputBase) {
        Fiber.abort("all digits must satisfy 0 <= d < input base")
      }
      sum = sum * inputBase + digit
    }
    if (sum == 0) {
        return [0]
    }
    var result = []
    while (sum > 0) {
        result.insert(0, sum % outputBase)
        sum = (sum / outputBase).truncate
    }
    return result
  }
}

