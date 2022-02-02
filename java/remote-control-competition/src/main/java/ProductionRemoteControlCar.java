class ProductionRemoteControlCar implements RemoteControlCar, Comparable<ProductionRemoteControlCar> {

    private final int DIST_INC = 10;
    private int distanceTraveled;
    private int numberOfVictories;

    public void drive() {
        distanceTraveled += DIST_INC;
    }

    public int getDistanceTravelled() {
        return distanceTraveled;
    }

    public int getNumberOfVictories() {
        return numberOfVictories;
    }

    public void setNumberOfVictories(int numberOfVictories) {
        this.numberOfVictories = numberOfVictories;
    }


    @Override
    public int compareTo(ProductionRemoteControlCar o) {
        return Integer.compare(numberOfVictories, o.numberOfVictories);
    }
}
