class CollatzConjecture {
  int steps(int limit) {
    if (limit < 1) {
      throw ArgumentError("Only positive numbers are allowed");
    }
    var cnt = 0;

    while (limit > 1) {
      if (limit % 2 == 0) {
        limit ~/= 2;
      } else {
        limit = 3 * limit + 1;
      }
      ++cnt;
    }

    return cnt;
  }
}
