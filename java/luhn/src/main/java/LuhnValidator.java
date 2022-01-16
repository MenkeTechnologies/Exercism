import java.util.stream.IntStream;

class LuhnValidator {
    boolean isValid(String candidate) {
        String ns = new StringBuilder(candidate.replaceAll("\\s", "")).reverse().toString();

        if (ns.length() < 2 || ns.matches("\\D")) {
            return false;
        }

        return IntStream.range(0, ns.length())
                .map(i -> {
                    int d = Character.getNumericValue(ns.toCharArray()[i]);
                    if (i % 2 == 1) {
                        d *= 2;
                    }
                    return d > 9 ? d - 9 : d;
                }).sum() % 10 == 0;
    }
}
