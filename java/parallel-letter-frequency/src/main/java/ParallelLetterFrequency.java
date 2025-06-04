import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

class ParallelLetterFrequency {
    private final String[] strings;

    ParallelLetterFrequency(String[] strings) {
        this.strings = strings;
    }

    Map<Character, Integer> countLetters() {
        return Arrays.stream(strings).collect(Collectors.joining("")).chars().parallel().mapToObj(c -> (char) c).filter(Character::isLetter).collect(Collectors.groupingBy(Character::toLowerCase, Collectors.summingInt(c -> 1)));
    }
}
