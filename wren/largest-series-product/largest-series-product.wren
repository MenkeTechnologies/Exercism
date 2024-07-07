class Series {
  construct new(digitString, span) {
    _digits = digitString.codePoints.map {|c| c - 48}.toList
    _span = span
    assert(_span >= 0, "span must not be negative")
    assert(_span <= _digits.count, "span must be smaller than string length")
    assert(_digits.all {|d| 0 <= d && d <= 9}, "digits input must only contain digits")
  }
  largestProduct {
    return (0..(_digits.count - _span)).reduce(0) {|max, i|
      var product = _digits[i...(i + _span)].reduce(1) {|prod, d| prod * d}
      return product.max(max)
    }
  }
  assert(cond, s) {
    if (!cond) Fiber.abort(s)
  }
}
