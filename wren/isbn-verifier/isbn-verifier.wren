class ISBN {
  construct new(s) {
      _s = s
  }
  isValid {
    var nodash = _s.replace("-", "").map{|c| c == "X" ? 10 : Num.fromString(c)}.toList
    if (nodash.count != 10 || nodash.contains(null) || nodash[0..8].contains(10)) return false

    var sum = (0...nodash.count).reduce(0) { |sum, i| sum + nodash[i] * (10 - i) }
    return sum % 11 == 0

  }
}

