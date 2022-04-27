import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

class WordCount {
    public Map<String, Integer> phrase(String word) {

        return Arrays.stream(word.toLowerCase().replaceAll("(\\s'|'\\s|(?!\\w|'\\w+\\b).)", " ").trim().split("\\s+"))
                .collect(Collectors.groupingBy(Function.identity()))
                .entrySet().stream().collect(Collectors.toMap(Map.Entry::getKey, e -> e.getValue().size()));
    }
}
