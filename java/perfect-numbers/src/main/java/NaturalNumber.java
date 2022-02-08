import java.util.stream.IntStream;

class NaturalNumber {
    Classification classification;

    public NaturalNumber(int num) {
        if (num <= 0) throw new IllegalArgumentException("You must supply a natural number (positive integer)");

        int sum = IntStream.range(1, num).filter(n -> num % n == 0).sum();
        if (sum < num) {
            classification = Classification.DEFICIENT;
        } else if (sum > num) {
            classification = Classification.ABUNDANT;
        } else {
            classification = Classification.PERFECT;
        }
    }

    public Classification getClassification() {
        return classification;
    }
}
