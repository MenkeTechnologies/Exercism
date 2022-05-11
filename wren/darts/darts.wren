class Darts {
  static score(x,y) {
    var d = (x * x + y * y).sqrt

    if (d <= 1) {
        return 10
    } else if (d <= 5) {
        return 5
    } else if (d <= 10) {
        return 1
    }

    return 0
  }
}
