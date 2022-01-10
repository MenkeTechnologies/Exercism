import java.util.stream.IntStream;

public class Hamming {
    String l;
    String r;

    public Hamming(String leftStrand, String rightStrand) {

        if (leftStrand.length() != rightStrand.length()) {
            if (leftStrand.isEmpty()) {
                throw new IllegalArgumentException("left strand must not be empty.");
            }

            if (rightStrand.isEmpty()) {
                throw new IllegalArgumentException("right strand must not be empty.");
            }
            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }

        l = leftStrand;
        r = rightStrand;
    }

    public int getHammingDistance() {

        return (int) IntStream.range(0, l.length())
                .filter(i -> l.charAt(i) != r.charAt(i)).count();
    }
}
