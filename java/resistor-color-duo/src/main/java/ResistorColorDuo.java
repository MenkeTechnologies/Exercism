import java.util.Arrays;
import java.util.stream.Collectors;

class ResistorColorDuo {
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

    int value(String[] colors) {
        return Integer.parseInt(Arrays.stream(colors).limit(2).map(c -> Colours.valueOf(c).ordinal() + "").collect(Collectors.joining("")));
    }
}
