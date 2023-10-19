import java.util.Arrays;
import java.util.stream.Collectors;

class Acronym {

    String phrase;

    Acronym(String phrase) {
        this.phrase = Arrays.stream(phrase.toUpperCase().replaceAll("[_']", "").split("\\W+")).map(c -> c.substring(0,1)).collect(Collectors.joining(""));
    }

    String get() {
       return phrase;
    }

}
