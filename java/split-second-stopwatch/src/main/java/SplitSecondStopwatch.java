import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class SplitSecondStopwatch {
    private String state = "ready";
    private LocalTime currentLap = LocalTime.of(0,0,0);
    private LocalTime total = LocalTime.of(0, 0, 0, 0);
    private List<String> previousLaps = new ArrayList<>();

    public String state() {
        return state;
    }

    public String currentLap() {
        return currentLap.format(DateTimeFormatter.ofPattern("HH:mm:ss"));
    }

    public String total() {
        return total.format(DateTimeFormatter.ofPattern("HH:mm:ss"));
    }

    public java.util.List<String> previousLaps() {
        return previousLaps;
    }

    public void start() {
        if (state.equals("running")) {
            throw new IllegalStateException("cannot start an already running stopwatch");
        }
        state = "running";
    }

    public void stop() {
        if (!state.equals("running")) {
            throw new IllegalStateException("cannot stop a stopwatch that is not running");
        }
        state = "stopped";
    }

    public void reset() {
        if (!this.state.equals("stopped")) {
            throw new IllegalStateException("cannot reset a stopwatch that is not stopped");
        }
        currentLap = LocalTime.of(0, 0, 0);
        previousLaps = new ArrayList<>();
        state = "ready";
    }

    public void lap() {
        if (!state.equals("running")) {
            throw new IllegalStateException("cannot lap a stopwatch that is not running");
        }
        previousLaps.add(currentLap());
        currentLap = LocalTime.of(0, 0, 0);
    }

    public void advanceTime(String timeString) {
        if (state.equals("running")) {
            currentLap = this.currentLap.plusSeconds(LocalTime.parse(timeString).toSecondOfDay());
            total = this.total.plusSeconds(LocalTime.parse(timeString).toSecondOfDay());
        }
    }
}
