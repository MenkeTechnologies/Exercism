class SumOfMultiples {

  int sum(List<int> factors, int limit) => Iterable<int>.generate(limit)
      .where((n) => factors.any((element) => element != 0 && n % element == 0))
      .fold(0, (acc, n) => acc + n);
}
