import java.util.stream.Collectors;

class RotationalCipher {
    Integer offset;

    RotationalCipher(int shiftKey) {
        offset = shiftKey;
    }

    String rotate(String data) {
        return data.chars().map(this::rot).mapToObj(c -> String.valueOf((char) c)).collect(Collectors.joining(""));
    }

    private int rot(int c) {
        if (Character.isLetter(c)) {
            return c >= 'a' ? (c - 'a' + offset) % 26 + 'a' : (c - 'A' + offset) % 26 + 'A';
        }
        return c;
    }
}
