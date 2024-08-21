import java.util.Map;

class ResistorColorTrio {
    Map<String, Integer> bandColors = Map.of(
            "black", 0, "brown", 1, "red", 2, "orange", 3, "yellow", 4,
            "green", 5, "blue", 6, "violet", 7, "grey", 8, "white", 9);

    String label(String[] colors) {
        long resistance = ((bandColors.get(colors[0]) * 10) + bandColors.get(colors[1]))
                * (long) Math.pow(10, bandColors.get(colors[2]));
        return resistance >= 1_000_000_000 ? "%d gigaohms".formatted(resistance / 1_000_000_000)
                : resistance >= 1_000_000 ? "%d megaohms".formatted(resistance / 1_000_000)
                : resistance >= 1_000 ? "%d kiloohms".formatted(resistance / 1_000)
                : "%d ohms".formatted(resistance);
    }
}
