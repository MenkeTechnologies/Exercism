import java.util.Arrays;
import java.util.stream.Collectors;

class ResistorColor {
    enum Colours {
        black,
        brown,
        red,
        orange,
        yellow,
        green,
        blue,
        violet,
        grey,
        white
    }
    int colorCode(String color) {
        return Colours.valueOf(color).ordinal();
    }

    String[] colors() {
        return Arrays.stream(Colours.values()).map(Enum::name).toArray(String[]::new);
    }
}
