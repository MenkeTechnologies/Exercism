import java.util.stream.IntStream;

class PrimeCalculator {
    int nth(int nth) {

        return IntStream.concat(IntStream.of(2), IntStream.iterate(3, n -> n + 2))
                .filter(n ->
                        IntStream.range(2, n / 2).allMatch(e -> n % e > 0)
                )
                .limit(nth)
                .max()
                .orElseThrow(() -> new IllegalArgumentException("no prime in range " + nth));
    }
}
