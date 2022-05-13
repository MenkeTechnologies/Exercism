class Acronym {
    static capitalize(c) {
    if (("a".bytes[0].."z".bytes[0]).contains(c.bytes[0])) {
      return String.fromByte(c.bytes[0] - 32)
    }
    return c
  }
  static parse(phrase) {
      return phrase.replace("-", " ").replace("_", "").split(" ")
          .where { |s| s.count > 0 }.map{|s| capitalize(s[0])}.join()
  }
}
