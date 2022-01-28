import java.util.regex.Pattern;

class Bob {
    public String hey(String s) {

        s = s.replaceAll("\\s", "");

        if (s.isEmpty()) return "Fine. Be that way!";

        if (Pattern.compile("[A-Z]").matcher(s).find() && !Pattern.compile("[a-z]").matcher(s).find()) {
            return s.endsWith("?") ? "Calm down, I know what I'm doing!" : "Whoa, chill out!";
        }

        return s.endsWith("?") ? "Sure." : "Whatever.";
    }
}
