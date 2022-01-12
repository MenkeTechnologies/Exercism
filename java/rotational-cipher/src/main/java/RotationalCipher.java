import java.util.stream.Collectors;

class RotationalCipher {
    Integer sc;

    RotationalCipher(int shiftKey) {
        sc = shiftKey;
    }

    String rotate(String data) {

        return data.chars().map(this::rot).mapToObj(c -> String.valueOf((char) c)).collect(Collectors.joining(""));
    }

    private int rot(int c) {
        if (Character.isLetter(c)) {
            return c >= 'a' ? (c - 'a' + sc) % 26 + 'a' :
                    (c - 'A' + sc) % 26 + 'A';
        }
        return c;
    }
}
