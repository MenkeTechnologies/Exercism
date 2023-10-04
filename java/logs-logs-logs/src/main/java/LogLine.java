import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LogLine {
    static Pattern regex = Pattern.compile("^\\[(.*)]:\\s+(.*\\S+)\\s*$");
    private final LogLevel logLevel;
    private final String message;

    public LogLine(String logLine) {
        Matcher matcher = regex.matcher(logLine);
        matcher.matches();

        logLevel = LogLevel.from(matcher.group(1));
        message = matcher.group(2);
    }

    public LogLevel getLogLevel() {
        return logLevel;
    }

    public String getOutputForShortLog() {
        return String.format("%d:%s", logLevel.getValue(), message);
    }
}
