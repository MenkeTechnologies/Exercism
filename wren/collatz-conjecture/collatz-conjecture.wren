class Collatz {
  static steps(n) {
      if (n < 1){
        Fiber.abort("Only positive numbers are allowed")
      }
      var cnt = 0
        while (n != 1){
            if (n % 2 == 0) {
                n = n / 2
            } else {
                n = 3 * n + 1
            }
            cnt = cnt + 1
        }

      return cnt
  }
}
