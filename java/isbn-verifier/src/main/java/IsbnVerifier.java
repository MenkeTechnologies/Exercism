import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class IsbnVerifier {
    boolean isValid(String stringToVerify) {

        if (!Pattern.compile("^\\d-?\\d{3}-?\\d{5}-?[\\dX]$")
                .matcher(stringToVerify).matches()) return false;

        String rvs = new StringBuilder(stringToVerify).reverse().chars()
                .filter(Character::isLetterOrDigit)
                .mapToObj(n -> Character.valueOf((char) n).toString())
                .collect(Collectors.joining());

        return IntStream.range(0, rvs.length())
                .map(n -> rvs.charAt(n) == 'X' ? 10 : Character.getNumericValue(rvs.charAt(n)) * (n + 1))
                .sum() % 11 == 0;
    }
}
