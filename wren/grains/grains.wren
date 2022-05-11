class Grains {
  static square(n) {
    if (n < 1 || n > 64) Fiber.abort("square must be between 1 and 64")
    return 2.pow(n - 1)
  }

  static total { (1..64).map{|n| square(n)}.reduce{|acc,n|acc + n} }
}
