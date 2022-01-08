import java.util.Map.Entry;
import java.util.stream.Stream;

import static java.util.Map.of;
import static java.util.stream.Collectors.joining;

class RaindropConverter {
    String convert(int n) {
        return Stream.of(of(3, "Pling", 5, "Plang", 7, "Plong")
                .entrySet().stream().filter(k -> n % k.getKey() == 0).sorted(Entry.comparingByKey())
                .map(Entry::getValue).collect(joining()))
                .map(s -> s.isEmpty() ? n + "" : s).collect(joining());
    }
}
