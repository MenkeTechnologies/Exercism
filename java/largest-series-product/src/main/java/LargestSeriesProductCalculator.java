import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;
import java.util.stream.IntStream;

class LargestSeriesProductCalculator {
    private final String s;

    LargestSeriesProductCalculator(String s) {
        if (Pattern.compile("\\D").matcher(s).find()) throw new IllegalArgumentException("String to search may only contain digits.");
        this.s = s;
    }

    long calculateLargestProductForSeriesLength(int window) {
        if (window > s.length())
            throw new IllegalArgumentException("Series length must be less than or equal to the length of the string to search.");
        if (window < 0) throw new IllegalArgumentException("Series length must be non-negative.");
        if (window == 0) return 1;

        List<Long> list = Arrays.stream(s.split("")).map(Long::parseLong).toList();
        return IntStream.range(0, list.size() - window + 1)
                .mapToObj(start -> list.subList(start, start + window))
                .map(l -> l.stream().reduce(1L, (acc, n) -> acc * n))
                .max(Comparator.comparingLong(n -> n)).orElseThrow();
    }
}
