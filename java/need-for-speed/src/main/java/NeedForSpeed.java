class NeedForSpeed {
    private int speed;
    private int batteryDrain;
    private int distance = 0;
    private int battery = 100;

    public NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {
        return battery == 0;
    }

    public int distanceDriven() {
        return distance;
    }

    public void drive() {
        if (!batteryDrained()) {
            distance += speed;
            battery = Math.max(0, battery - batteryDrain);
        }
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }
}

class RaceTrack {
    private Integer distance;

    public RaceTrack(Integer distance) {
        this.distance = distance;
    }

    public boolean carCanFinish(NeedForSpeed car) {
        while (!car.batteryDrained()) {
            car.drive();
            if (car.distanceDriven() >= distance) return true;
        }

        return false;
    }
}
