import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LogLevels {
    static Pattern regex = Pattern.compile("^\\[(.*)\\]:\\s+(.*\\S+)\\s*$");

    public static String message(String logLine) {
        Matcher matcher = regex.matcher(logLine);
        matcher.matches();

        return matcher.group(2);
    }

    public static String logLevel(String logLine) {

        Matcher matcher = regex.matcher(logLine);
        matcher.matches();

        return matcher.group(1).toLowerCase();
    }

    public static String reformat(String logLine) {
        return String.format("%s (%s)", message(logLine), logLevel(logLine));
    }
}
