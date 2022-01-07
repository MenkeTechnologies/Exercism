import java.util.Map;
import java.util.stream.Collectors;

class RnaTranscription {
    Map<String, String> MAP = Map.of("G", "C", "C", "G", "T", "A", "A", "U");

    String transcribe(String dnaStrand) {

        return dnaStrand.chars().mapToObj(c -> (char) c).map(c -> MAP.get(c.toString())).collect(Collectors.joining());
    }
}
