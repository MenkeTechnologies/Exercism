class Sieve {
  List<int> primes = [];

  Sieve(limit) {
    final composites = List.generate(limit + 1, (_) => false, growable: false);
    for (int i = 2; i <= limit; i++) {
      if (!composites[i]) {
        primes.add(i);
        for (int j = i + i; j <= limit; j += i) {
          composites[j] = true;
        }
      }
    }
  }
}
