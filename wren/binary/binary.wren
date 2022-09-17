class Binary {
  construct new(number) {
    _num = number
  }
  toDecimal {
    if (_num.any {|c| c != "1" && c != "0" }) return null
    return _num.reduce(0) {|acc, c| acc << 1 | Num.fromString(c) }
  }
}
