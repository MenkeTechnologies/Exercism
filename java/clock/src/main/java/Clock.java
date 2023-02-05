public class Clock {
    private int minutes = 0;

    public Clock(int hours, int minutes) {
        add(hours * 60 + minutes);
    }

    public void add(int minutes) {
        this.minutes += minutes;
    }

    @Override
    public String toString() {
        return String.format("%02d:%02d", getHours(), getMinutes());
    }

    @Override
    public boolean equals(Object other) {
        return other != null && getClass() == other.getClass() && hashCode() == other.hashCode();
    }

    @Override
    public int hashCode() {
        return toString().hashCode();
    }

    private int getHours() {
        return Math.floorMod(Math.floorDiv(minutes, 60), 24);
    }

    private int getMinutes() {
        return Math.floorMod(minutes, 60);
    }
}
