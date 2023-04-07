import java.util.ArrayList;
import java.util.stream.Collectors;

class ReverseString {
    String reverse(String inputString) {
        return inputString.chars()
                .collect(() -> new ArrayList<Integer>(), (acc, n) -> acc.add(0, n), ArrayList::addAll)
                .stream().map(Character::toString).collect(Collectors.joining());
    }
}
