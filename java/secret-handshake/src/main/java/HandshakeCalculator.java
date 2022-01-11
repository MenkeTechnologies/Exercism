import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

class HandshakeCalculator {
    List<Signal> calculateHandshake(int number) {

        List<Signal> li = Arrays.stream(Signal.values())
                .filter(s -> (number & ((int) (Math.pow(2, s.ordinal())))) > 0).collect(Collectors.toList());

        if ((number & 10_000) > 0) {
            Collections.reverse(li);
        }

        return li;
    }
}
