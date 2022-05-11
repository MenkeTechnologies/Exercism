class Number {
  static isArmstrong(num) {
    var digits = num.toString
    return num == digits.reduce(0) {|acc, n| acc + Num.fromString(n).pow(digits.count) }
  }
}
