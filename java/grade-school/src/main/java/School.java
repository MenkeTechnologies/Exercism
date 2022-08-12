import java.util.*;
import java.util.stream.Collectors;

public class School {
    private final SortedMap<Integer, SortedSet<String>> roster = new TreeMap<>();

    public void add(String name, int grade) {
        roster.computeIfAbsent(grade, i -> new TreeSet<>()).add(name);
    }
    public List<String> roster() {
        return roster.values().stream().flatMap(Collection::stream).collect(Collectors.toList());
    }
    public List<String> grade(int grade) {
        return new ArrayList<>(roster.getOrDefault(grade, Collections.emptySortedSet()));
    }
}

