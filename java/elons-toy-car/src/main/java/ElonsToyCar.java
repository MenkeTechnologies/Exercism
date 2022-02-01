public class ElonsToyCar {
    private int battery = 100;
    private int distance = 0;

    public static ElonsToyCar buy() {
        return new ElonsToyCar();
    }

    public String distanceDisplay() {
        return String.format("Driven %s meters", distance);
    }

    public String batteryDisplay() {
        return battery == 0 ? "Battery empty" : String.format("Battery at %s%%", battery);
    }

    public void drive() {
        if (battery > 0) {
            battery -= 1;
            distance += 20;
        }
    }
}
