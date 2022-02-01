import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class Flattener {
    public <T> List<T> flatten(List<T> array) {
        return array.stream().filter(Objects::nonNull).map(n -> n instanceof List ?
                flatten((List<T>) n) : List.of(n)).reduce(List.of(), (acc, n) ->
                Stream.concat(acc.stream(), n.stream()).collect(Collectors.toList())
        );
    }
}
