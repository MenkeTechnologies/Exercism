import static java.lang.Character.isDigit;
import static java.util.stream.Collectors.joining;

class Atbash {
    private String tr(String s) {
        return s.toLowerCase().chars().filter(Character::isLetterOrDigit)
                .map(c -> isDigit(c) ? c : 'z' - c + 'a').mapToObj(Character::toString).collect(joining());
    }

    public String encode(String s) {
        return tr(s).replaceAll(".{5}(?=.)", "$0 ");
    }

    public String decode(String s) {
        return tr(s);
    }
}
