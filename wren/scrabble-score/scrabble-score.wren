var SCORES = {
  "a": 1, "b": 3, "c": 3, "d": 2, "e": 1,
  "f": 4, "g": 2, "h": 4, "i": 1, "j": 8,
  "k": 5, "l": 1, "m": 3, "n": 1, "o": 1,
  "p": 3, "q": 10, "r": 1, "s": 1, "t": 1,
  "u": 1, "v": 4, "w": 4, "x": 8, "y": 4,
  "z": 10
}
class Scrabble {
  static score(word) {
      return lc(word).map{|c| SCORES[c]}.reduce(0){|acc,n| acc + n}
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
