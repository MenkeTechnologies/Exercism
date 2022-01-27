import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

class SqueakyClean {
    static String clean(String identifier) {

        Matcher matcher = Pattern.compile("-(\\D)").matcher(identifier);

        if (matcher.find()) identifier = matcher.replaceAll(matcher.group(1).toUpperCase());

        return identifier.chars()
                .mapToObj(c -> c == ' ' ? "_" : Character.isISOControl(c) ? "CTRL" :
                        c >= 'α' && c <= 'ω' ? "" : Character.isLetter(c) ?
                                String.valueOf((char) c) : ""
                ).collect(Collectors.joining(""));
    }
}
