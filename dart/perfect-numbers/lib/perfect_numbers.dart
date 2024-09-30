enum Classification {
  perfect,
  abundant,
  deficient,
}

class PerfectNumbers {
  Classification classify(int number) {
    if (number < 1) throw ArgumentError('Number must be greater than 0');

    var sum = List.generate(number - 1, (n) => n + 1)
        .where((n) => number % n == 0)
        .fold(0, (acc, n) => acc + n);

    return sum == number
        ? Classification.perfect
        : sum > number
            ? Classification.abundant
            : Classification.deficient;
  }
}
