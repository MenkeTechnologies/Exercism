import java.util.stream.Stream;

class CollatzCalculator {
    int computeStepCount(int start) {
        if (start < 1) {
            throw new IllegalArgumentException("Only natural numbers are allowed");
        }
        return ((int) (Stream.iterate(start, i -> i % 2 == 0 ? i / 2 : i * 3 + 1
        ).takeWhile(i -> i > 1).count()));
    }
}
