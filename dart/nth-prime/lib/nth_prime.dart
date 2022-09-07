class NthPrime {
  int prime(int n) {
    if (n < 1) throw ArgumentError('There is no zeroth prime');
    var primes = <int>[2];
    var curr = 3;
    while (primes.length < n){
      if (primes.every((p) => curr % p != 0)) primes.add(curr);
      curr+=2;
    }
    return primes.last;
  }
}
