class Flatten {
  static flatten(lst) {
    return lst.reduce([]) {|acc, n|
      if (n is Sequence) {
        acc.addAll(flatten(n))
      } else if (n != null) {
        acc.add(n)
      }
      return acc
    }
  }
}
