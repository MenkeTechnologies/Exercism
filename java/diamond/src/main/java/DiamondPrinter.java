import java.util.List;
import java.util.stream.IntStream;

import static java.util.Comparator.reverseOrder;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;
import static java.util.stream.IntStream.rangeClosed;
import static java.util.stream.Stream.concat;

class DiamondPrinter {
    List<String> printToList(char a) {

        int limit = a - 'A';
        return concat(rangeClosed(0, limit).boxed(),
                IntStream.range(0, limit).boxed().sorted(reverseOrder()))
                .map(r ->
                        concat(rangeClosed(0, limit).boxed().sorted(reverseOrder()),
                                rangeClosed(1, limit).boxed())
                                .map(c -> r.equals(c) ? String.valueOf((char) (r + 'A')) : " ").collect(joining(""))

                ).collect(toList());
    }
}
