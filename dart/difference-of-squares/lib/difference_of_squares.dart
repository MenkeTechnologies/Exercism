class DifferenceOfSquares {
  int sq(int n) => n * n;

  int sumOfSquares(int num) =>
      new Iterable<int>.generate(num + 1).map(sq).reduce((acc, n) => acc + n);

  int squareOfSum(int num) =>
      sq(new Iterable<int>.generate(num + 1).reduce((acc, n) => acc + n));

  int differenceOfSquares(int i) => squareOfSum(i) - sumOfSquares(i);
}
