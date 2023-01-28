export function primes(limit) {
  if (limit < 2) return [];
  let primeSet = new Set();
  for (let i = 2; i <= limit; ++i) {
    primeSet.add(i);
  }
  for (let i = 2; i <= limit; ++i) {
    if (primeSet.has(i)) {
      for (let j = 2; i * j <= limit; ++j)
        primeSet.delete(i * j);
    }
  }
  return Array.from(primeSet);
}
