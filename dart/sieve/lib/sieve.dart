class Sieve {
  final int n;
  Sieve(this.n);
  get primes {
    final lst = List.generate(n+1, (_) => true, growable: false);
    lst[0] = lst[1] = false;
    for (int i = 2; i < lst.length; i++) {
      if (!lst[i]) {
        continue;
      }
      for (int k = i + i; k < lst.length; k += i) {
        lst[k] = false;
      }
    }
    final ans = [];
    for (int i = 2; i < lst.length; i++) {
      if (lst[i]) {
        ans.add(i);
      }
    }
    return ans;
  }
}
