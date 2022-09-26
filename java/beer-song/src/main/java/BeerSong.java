import java.util.Collections;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class BeerSong {
    String singSong() {
        return sing(99, 100);
    }

    String sing(Integer bottleCount, Integer takeDown) {
        int end = bottleCount - takeDown + 1;
        return IntStream.rangeClosed(end, bottleCount).boxed().sorted(Collections.reverseOrder())
                .map(this::verse).collect(Collectors.joining("\n\n")) + "\n\n";
    }

    String verse(Integer bottleCount) {
        int bottleMinusOne = bottleCount - 1;

        return switch (bottleCount) {
            case 0 -> "No more bottles of beer on the wall, no more bottles of beer.\n" +
                    "Go to the store and buy some more, 99 bottles of beer on the wall.";
            case 2 -> "2 bottles of beer on the wall, 2 bottles of beer.\n" +
                    "Take one down and pass it around, 1 bottle of beer on the wall.";
            case 1 -> "1 bottle of beer on the wall, 1 bottle of beer.\n" +
                    "Take it down and pass it around, no more bottles of beer on the wall.";
            default -> bottleCount + " bottles of beer on the wall, " + bottleCount + " bottles of beer.\n" +
                    "Take one down and pass it around, " + bottleMinusOne + " bottles of beer on the wall.";
        };
    }
}
