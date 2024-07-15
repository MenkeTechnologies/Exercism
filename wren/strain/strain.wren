class Strain {
  static keep(lst, f) {
    var res = []
    for (item in lst) {
      if (f.call(item)) {
        res.add(item)
      }
    }
    return res
  }
  static discard(lst, f) {
    return keep(lst) { |n| !f.call(n) }
  }
}

