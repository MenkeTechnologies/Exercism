import "wren-testie/testie" for Testie, Expect
import "./rational-numbers" for Rational

class Math {
  static approxEqual(a, b) { (a - b).abs <= 1e-6 }
}

Testie.test("Rational") { |do, skip|
  do.describe("Reduction to lowest terms") {
    do.test("Reduce a positive rational number to lowest terms") {
      var r = Rational.new(2, 4)
      Expect.value(r).toEqual(Rational.new(1, 2))
    }
    do.test("Reduce places the minus sign on the numerator") {
      var r = Rational.new(3, -4)
      Expect.value(r).toEqual(Rational.new(-3, 4))
    }
    do.test("Reduce a negative rational number to lowest terms") {
      var r = Rational.new(-4, 6)
      Expect.value(r).toEqual(Rational.new(-2, 3))
    }
    do.test("Reduce a rational number with a negative denominator to lowest terms") {
      var r = Rational.new(3, -9)
      Expect.value(r).toEqual(Rational.new(-1, 3))
    }
    do.test("Reduce zero to lowest terms") {
      var r = Rational.new(0, 6)
      Expect.value(r).toEqual(Rational.new(0, 1))
    }
    do.test("Reduce an integer to lowest terms") {
      var r = Rational.new(-14, 7)
      Expect.value(r).toEqual(Rational.new(-2, 1))
    }
    do.test("Reduce one to lowest terms") {
      var r = Rational.new(13, 13)
      Expect.value(r).toEqual(Rational.new(1, 1))

    }
  }

  do.describe("Addition") {
    do.test("Add two positive rational numbers") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(2, 3)
      Expect.value(r1 + r2).toEqual(Rational.new(7, 6))
    }
    do.test("Add a positive rational number and a negative rational number") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 + r2).toEqual(Rational.new(-1, 6))
    }
    do.test("Add two negative rational numbers") {
      var r1 = Rational.new(-1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 + r2).toEqual(Rational.new(-7, 6))
    }
    do.test("Add a rational number to its additive inverse") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(-1, 2)
      Expect.value(r1 + r2).toEqual(Rational.new(0, 1))
    }
  }
  do.describe("Subtraction") {
    do.test("Subtract two positive rational numbers") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(2, 3)
      Expect.value(r1 - r2).toEqual(Rational.new(-1, 6))
    }
    do.test("Subtract a positive rational number and a negative rational number") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 - r2).toEqual(Rational.new(7, 6))
    }
    do.test("Subtract two negative rational numbers") {
      var r1 = Rational.new(-1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 - r2).toEqual(Rational.new(1, 6))
    }
    do.test("Subtract a rational number from itself") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(1, 2)
      Expect.value(r1 - r2).toEqual(Rational.new(0, 1))
    }
  }

  do.describe("Multiplication") {
    do.test("Multiply two positive rational numbers") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(2, 3)
      Expect.value(r1 * r2).toEqual(Rational.new(1, 3))
    }
    do.test("Multiply a negative rational number by a positive rational number") {
      var r1 = Rational.new(-1, 2)
      var r2 = Rational.new(2, 3)
      Expect.value(r1 * r2).toEqual(Rational.new(-1, 3))
    }
    do.test("Multiply two negative rational numbers") {
      var r1 = Rational.new(-1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 * r2).toEqual(Rational.new(1, 3))
    }
    do.test("Multiply a rational number by its reciprocal") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(2, 1)
      Expect.value(r1 * r2).toEqual(Rational.new(1, 1))
    }
    do.test("Multiply a rational number by 1") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(1, 1)
      Expect.value(r1 * r2).toEqual(Rational.new(1, 2))
    }
    do.test("Multiply a rational number by 0") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(0, 1)
      Expect.value(r1 * r2).toEqual(Rational.new(0, 1))
    }
  }

  do.describe("Division") {
    do.test("Divide two positive rational numbers") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(2, 3)
      Expect.value(r1 / r2).toEqual(Rational.new(3, 4))
    }
    do.test("Divide a positive rational number by a negative rational number") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 / r2).toEqual(Rational.new(-3, 4))
    }
    do.test("Divide two negative rational numbers") {
      var r1 = Rational.new(-1, 2)
      var r2 = Rational.new(-2, 3)
      Expect.value(r1 / r2).toEqual(Rational.new(3, 4))
    }
    do.test("Divide a rational number by 1") {
      var r1 = Rational.new(1, 2)
      var r2 = Rational.new(1, 1)
      Expect.value(r1 / r2).toEqual(Rational.new(1, 2))
    }
  }

  do.describe("Absolute value") {
    do.test("Absolute value of a positive rational number") {
      var r = Rational.new(1, 2)
      Expect.value(r.abs).toEqual(Rational.new(1, 2))
    }
    do.test("Absolute value of a positive rational number with negative numerator and denominator") {
      var r = Rational.new(-1, -2)
      Expect.value(r.abs).toEqual(Rational.new(1, 2))
    }
    do.test("Absolute value of a negative rational number") {
      var r = Rational.new(-1, 2)
      Expect.value(r.abs).toEqual(Rational.new(1, 2))
    }
    do.test("Absolute value of a negative rational number with negative denominator") {
      var r = Rational.new(1, -2)
      Expect.value(r.abs).toEqual(Rational.new(1, 2))
    }
    do.test("Absolute value of zero") {
      var r = Rational.new(0, 1)
      Expect.value(r.abs).toEqual(Rational.new(0, 1))
    }
    do.test("Absolute value of a rational number is reduced to lowest terms") {
      var r = Rational.new(2, 4)
      Expect.value(r.abs).toEqual(Rational.new(1, 2))
    }
  }

  do.describe("Exponentiation of a rational number") {
    do.test("Raise a positive rational number to a positive integer power") {
      var r = Rational.new(1, 2)
      Expect.value(r.pow(3)).toEqual(Rational.new(1, 8))
    }
    do.test("Raise a negative rational number to a positive integer power") {
      var r = Rational.new(-1, 2)
      Expect.value(r.pow(3)).toEqual(Rational.new(-1, 8))
    }
    do.test("Raise a positive rational number to a negative integer power") {
      var r = Rational.new(3, 5)
      Expect.value(r.pow(-2)).toEqual(Rational.new(25, 9))
    }
    do.test("Raise a negative rational number to an even negative integer power") {
      var r = Rational.new(-3, 5)
      Expect.value(r.pow(-2)).toEqual(Rational.new(25, 9))
    }
    do.test("Raise a negative rational number to an odd negative integer power") {
      var r = Rational.new(-3, 5)
      Expect.value(r.pow(-3)).toEqual(Rational.new(-125, 27))
    }
    do.test("Raise zero to an integer power") {
      var r = Rational.new(0, 1)
      Expect.value(r.pow(5)).toEqual(Rational.new(0, 1))
    }
    do.test("Raise one to an integer power") {
      var r = Rational.new(1, 1)
      Expect.value(r.pow(4)).toEqual(Rational.new(1, 1))
    }
    do.test("Raise a positive rational number to the power of zero") {
      var r = Rational.new(1, 2)
      Expect.value(r.pow(0)).toEqual(Rational.new(1, 1))
    }
    do.test("Raise a negative rational number to the power of zero") {
      var r = Rational.new(-1, 2)
      Expect.value(r.pow(0)).toEqual(Rational.new(1, 1))
    }
  }

  do.describe("Exponentiation of a real number to a rational number") {
    do.test("Raise a real number to a positive rational number") {
      var r = Rational.new(4, 3)
      var result = Math.approxEqual(r.expreal(8), 16.0)
      Expect.value(result).toBe(true)
    }
    do.test("Raise a real number to a negative rational number") {
      var r = Rational.new(-1, 2)
      var result = Math.approxEqual(r.expreal(9), 0.3333333333333333)
      Expect.value(result).toBe(true)
    }
    do.test("Raise a real number to a zero rational number") {
      var r = Rational.new(0, 1)
      var result = Math.approxEqual(r.expreal(2), 1.0)
      Expect.value(result).toBe(true)
    }
  }
}
