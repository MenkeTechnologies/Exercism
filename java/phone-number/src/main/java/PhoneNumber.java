import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhoneNumber {
    private String number;
    private Pattern REGEX = Pattern.compile("\\s*\\+?(\\d)?\\s*\\(?(\\d{3})\\)?[-.\\s]*(\\d{3})[-.\\s]*(\\d{4})\\s*$");

    public PhoneNumber(String in) {

        Matcher m = REGEX.matcher(in);
        if (m.matches()) {
            if (m.group(1) != null && !m.group(1).equals("1")) throw new IllegalArgumentException("11 digits must start with 1");
            if (m.group(2).startsWith("1")) throw new IllegalArgumentException("area code cannot start with one");
            if (m.group(2).startsWith("0")) throw new IllegalArgumentException("area code cannot start with zero");
            if (m.group(3).startsWith("1")) throw new IllegalArgumentException("exchange code cannot start with one");
            if (m.group(3).startsWith("0")) throw new IllegalArgumentException("exchange code cannot start with zero");
            this.number = m.group(2) + m.group(3) + m.group(4);
        } else {
            if (in.toLowerCase().matches(".*[a-z].*")) throw new IllegalArgumentException("letters not permitted");
            if (in.replaceAll("[\\d()+-]", "").length() > 0) throw new IllegalArgumentException("punctuations not permitted");
            if (in.length() < 10) throw new IllegalArgumentException("incorrect number of digits");
            if (in.length() > 11) throw new IllegalArgumentException("more than 11 digits");
        }
    }

    public String getNumber() {
        return number;
    }
}
