class Anagram {
    static find(word, list) {
        return list
        .where { |w| lc(w) != lc(word) }
        .where { |w| normalize(w) == normalize(word) }
        .toList
  }

    static normalize(word) {
        return word
            .map { |c| lc(c) }
            .toList
            .sort { |a, b| a.bytes[0] < b.bytes[0] }
            .join()
  }

    static lc(s) {
        return s.map { |c|
            if (("A".bytes[0].."Z".bytes[0]).contains(c.bytes[0])) {
                return String.fromByte(c.bytes[0] + 32)
            }
        return c
    }.join()
  }



}
