import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

class NucleotideCounter {
    Map<Character, Integer> map = new HashMap<>(Map.of('A', 0, 'C', 0, 'G', 0, 'T', 0));

    public NucleotideCounter(String s) {
        map = s.chars().mapToObj(c -> (char) c).collect(Collectors.groupingBy(s1 -> s1)).entrySet().stream().collect(Collectors.toMap(c -> {
            if (!map.containsKey(c.getKey())) throw new IllegalArgumentException("bad nucleotide " + c);
            return c.getKey();
        }, v -> v.getValue().size(), (integer, integer2) -> integer2, () -> map));
    }

    public Map<Character, Integer> nucleotideCounts() {
        return map;
    }
}
