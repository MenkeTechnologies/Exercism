class Bob {
  static allCaps(str) {
    var capital = false
    for (c in str.bytes) {
      if (c > 96 && c < 123) return false
      if (c > 64 && c < 91) capital = true
    }
    return capital
  }

  static hey(msg) {
    var nows = msg.trimEnd()
    if (nows == "") return "Fine. Be that way!"
    if (allCaps(nows)) {
        if (nows[-1] == "?") return "Calm down, I know what I'm doing!"
        return "Whoa, chill out!"
    }
    if (nows[-1] == "?") {
      return "Sure."
    }
    return "Whatever."
  }
}

