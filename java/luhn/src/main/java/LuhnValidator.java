import java.util.stream.IntStream;

class LuhnValidator {
    boolean isValid(String candidate) {
        String ns = new StringBuilder(candidate.replaceAll("\\s", "")).reverse().toString();

        return ns.matches("^\\d{2,}$") && IntStream.range(0, ns.length())
                .map(i -> {
                    int d = Character.getNumericValue(ns.toCharArray()[i]);
                    if (i % 2 == 1) {
                        d *= 2;
                    }
                    return d > 9 ? d - 9 : d;
                }).sum() % 10 == 0;
    }
}
