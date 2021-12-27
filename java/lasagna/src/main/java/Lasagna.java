public class Lasagna {
    public int expectedMinutesInOven() {
        return 40;
    }

    public int remainingMinutesInOven(int actualMinutes) {
        return expectedMinutesInOven() - actualMinutes;
    }

    public int preparationTimeInMinutes(int amountLayers) {
        return amountLayers * 2;
    }

    public int totalTimeInMinutes(int amountLayers, int actualMinutes) {
        return actualMinutes + preparationTimeInMinutes(amountLayers);
    }
}
