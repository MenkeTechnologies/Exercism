public class CarsAssemble {
    private static final int CPH = 221;

    public double productionRatePerHour(int speed) {
        return CPH * speed * (speed >= 10 ? 0.77 :
                speed >= 9 ? 0.8 : speed >= 5 ? 0.9 : speed >= 1 ? 1 : 0);
    }

    public int workingItemsPerMinute(int speed) {
        return (int) (productionRatePerHour(speed) / 60);
    }
}
