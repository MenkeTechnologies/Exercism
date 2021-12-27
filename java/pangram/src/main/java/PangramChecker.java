import java.util.stream.IntStream;

public class PangramChecker {
    public boolean isPangram(String input) {

        String lc = input.toLowerCase();

        return IntStream.rangeClosed('a', 'z')
                .allMatch(i -> lc.indexOf(i) != -1);
    }
}
