import "essentials" for Strings
class Isogram {
  static isIsogram(string) {
    var res = true
    var seen = {}
    for (c in Strings.downcase(string)) {
      if (!"abcdefghijklmnopqrstuvwxyz".contains(c)) continue
      if (seen.containsKey(c)) {
        return false
      }
      seen[c] = true
    }
    return res
  }
}
