import java.util.Arrays;
import java.util.stream.IntStream;

class SumOfMultiples {
    private int sum;

    SumOfMultiples(int number, int[] set) {

        sum = IntStream.range(1, number)
                .filter(n -> Arrays.stream(set).filter(f -> f != 0).anyMatch(f -> n % f == 0))
                .sum();
    }

    int getSum() {
        return sum;
    }
}
