public class ExperimentalRemoteControlCar implements RemoteControlCar {

    private final int DIST_INC = 20;
    private int distanceTraveled;

    public void drive() {
        distanceTraveled += DIST_INC;
    }

    public int getDistanceTravelled() {
        return distanceTraveled;
    }
}
