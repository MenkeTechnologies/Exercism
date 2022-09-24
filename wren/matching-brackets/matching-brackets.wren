var BRACKETS = { "{":"}", "(":")", "[":"]" }

class Brackets {
  static isPaired(s) {
    var stk = []
    for (c in s) {
        if (BRACKETS.keys.contains(c)) {
            stk.add(c)
        } else if (BRACKETS.values.contains(c)) {
            if (stk.isEmpty || BRACKETS[stk.removeAt(-1)] != c) return false
        }
    }
    return stk.isEmpty
  }
}

