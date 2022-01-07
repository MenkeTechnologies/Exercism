import java.util.Arrays;
import java.util.stream.Collectors;

class Acronym {

    String phrase;

    Acronym(String phrase) {
        this.phrase = phrase.toUpperCase();
    }

    String get() {

       return Arrays.stream(phrase.replaceAll("[_']", "").split("\\W+")).map(c -> c.substring(0,1)).collect(Collectors.joining(""));

    }

}
