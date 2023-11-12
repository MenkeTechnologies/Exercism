BigInt square(final int n) {
  if (n < 1 || n > 64) throw new ArgumentError("square must be between 1 and 64");
  
  return BigInt.two.pow(n - 1);
}

BigInt total() {
  return Iterable<int>.generate(64, (n) => n + 1).map(square).reduce((acc, n) => acc + n);
}
