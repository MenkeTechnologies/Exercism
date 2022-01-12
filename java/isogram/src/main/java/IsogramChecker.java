import java.util.function.Function;
import java.util.stream.Collectors;

class IsogramChecker {
    boolean isIsogram(String phrase) {

        return phrase.toLowerCase().chars().filter(Character::isLetter)
                .boxed().collect(
                        Collectors.groupingBy(
                                Function.identity(), Collectors.counting()
                        )
                ).values().stream().noneMatch(c -> c > 1);
    }
}
