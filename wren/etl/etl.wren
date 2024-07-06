class Etl {
  static toLower(c) {
    return String.fromByte("a".bytes[0] + c.bytes[0] - "A".bytes[0])
  }
  static transform(old) {
    var dict = Map.new()
    for (mapping in old) {
      for (c in mapping.value) dict[toLower(c)] = mapping.key
    }
    return dict
  }
}
