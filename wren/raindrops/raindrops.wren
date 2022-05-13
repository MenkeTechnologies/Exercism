class Raindrops {
  static convert(n) {
      var r = ""
        if (n % 3 == 0) r = r + "Pling"
        if (n % 5 == 0) r = r +  "Plang"
        if (n % 7 == 0) r = r + "Plong"
        return r.isEmpty ? n.toString : r
  }
}
