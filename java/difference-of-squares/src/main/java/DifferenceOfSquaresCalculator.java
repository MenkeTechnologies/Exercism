import java.util.stream.IntStream;

class DifferenceOfSquaresCalculator {

    int computeSquareOfSumTo(int input) {
       return (int) Math.pow(IntStream.rangeClosed(1, input)
                .sum(), 2);
    }

    int computeSumOfSquaresTo(int input) {
        return (int) IntStream.rangeClosed(1, input).mapToDouble(i->Math.pow(i, 2))
                .sum();
    }

    int computeDifferenceOfSquares(int input) {
        return computeSquareOfSumTo(input) - computeSumOfSquaresTo(input);
    }

}
