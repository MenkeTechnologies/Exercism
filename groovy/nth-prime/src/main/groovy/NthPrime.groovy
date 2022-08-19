import java.util.stream.IntStream

class NthPrime {
    static nth(int n) {
        if (n < 1) throw new ArithmeticException()
        Collection<Integer> primes = [2]
        IntStream.iterate(3, { it + 2 })
                .takeWhile { primes.size() < n }
                .peek { v -> if (primes.every { p -> v % p != 0 })
                    primes.add v
                }.collect()
        primes.last()
    }
}
