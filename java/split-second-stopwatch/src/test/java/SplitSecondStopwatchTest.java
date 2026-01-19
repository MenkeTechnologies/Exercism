import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;

public class SplitSecondStopwatchTest {
    @Test

    public void newStopwatchStartsInReadyState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThat(stopwatch.state()).isEqualTo("ready");
    }


    @Test

    public void newStopwatchCurrentLapHasNoElapsedTime() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:00");
    }


    @Test

    public void newStopwatchTotalHasNoElapsedTime() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThat(stopwatch.total()).isEqualTo("00:00:00");
    }


    @Test

    public void newStopwatchDoesNotHavePreviousLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThat(stopwatch.previousLaps()).isEmpty();
    }


    @Test

    public void startFromReadyStateChangesStateToRunning() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        assertThat(stopwatch.state()).isEqualTo("running");
    }


    @Test

    public void startDoesNotChangePreviousLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        assertThat(stopwatch.previousLaps()).isEmpty();
    }


    @Test

    public void startInitiatesTimeTrackingForCurrentLap() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:05");
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:05");
    }


    @Test

    public void startInitiatesTimeTrackingForTotal() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:23");
        assertThat(stopwatch.total()).isEqualTo("00:00:23");
    }


    @Test

    public void startCannotBeCalledFromRunningState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::start)
                .withMessage("cannot start an already running stopwatch");
    }


    @Test

    public void stopFromRunningStateChangesStateToStopped() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.stop();
        assertThat(stopwatch.state()).isEqualTo("stopped");
    }


    @Test

    public void stopPausesTimeTrackingForCurrentLap() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:05");
        stopwatch.stop();
        stopwatch.advanceTime("00:00:08");
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:05");
    }


    @Test

    public void stopPausesTimeTrackingForTotal() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:13");
        stopwatch.stop();
        stopwatch.advanceTime("00:00:44");
        assertThat(stopwatch.total()).isEqualTo("00:00:13");
    }


    @Test

    public void stopCannotBeCalledFromReadyState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::stop)
                .withMessage("cannot stop a stopwatch that is not running");
    }


    @Test

    public void stopCannotBeCalledFromStoppedState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.stop();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::stop)
                .withMessage("cannot stop a stopwatch that is not running");
    }


    @Test

    public void startFromStoppedStateChangesStateToRunning() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.stop();
        stopwatch.start();
        assertThat(stopwatch.state()).isEqualTo("running");
    }


    @Test

    public void startFromStoppedStateResumesTimeTrackingForCurrentLap() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:01:20");
        stopwatch.stop();
        stopwatch.advanceTime("00:00:20");
        stopwatch.start();
        stopwatch.advanceTime("00:00:08");
        assertThat(stopwatch.currentLap()).isEqualTo("00:01:28");
    }


    @Test

    public void startFromStoppedStateResumesTimeTrackingForTotal() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:23");
        stopwatch.stop();
        stopwatch.advanceTime("00:00:44");
        stopwatch.start();
        stopwatch.advanceTime("00:00:09");
        assertThat(stopwatch.total()).isEqualTo("00:00:32");
    }


    @Test

    public void lapAddsCurrentLapToPreviousLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:01:38");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("00:01:38");
        stopwatch.advanceTime("00:00:44");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("00:01:38", "00:00:44");
    }


    @Test

    public void lapResetsCurrentLapAndResumesTimeTracking() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:08:22");
        stopwatch.lap();
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:00");
        stopwatch.advanceTime("00:00:15");
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:15");
    }


    @Test

    public void lapContinuesTimeTrackingForTotal() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:22");
        stopwatch.lap();
        stopwatch.advanceTime("00:00:33");
        assertThat(stopwatch.total()).isEqualTo("00:00:55");
    }


    @Test

    public void lapCannotBeCalledFromReadyState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::lap)
                .withMessage("cannot lap a stopwatch that is not running");
    }


    @Test

    public void lapCannotBeCalledFromStoppedState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.stop();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::lap)
                .withMessage("cannot lap a stopwatch that is not running");
    }


    @Test

    public void stopDoesNotChangePreviousLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:11:22");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("00:11:22");
        stopwatch.stop();
        assertThat(stopwatch.previousLaps()).containsExactly("00:11:22");
    }


    @Test

    public void resetFromStoppedStateChangesStateToReady() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.stop();
        stopwatch.reset();
        assertThat(stopwatch.state()).isEqualTo("ready");
    }


    @Test

    public void resetResetsCurrentLap() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:10");
        stopwatch.stop();
        stopwatch.reset();
        assertThat(stopwatch.currentLap()).isEqualTo("00:00:00");
    }


    @Test

    public void resetClearsPreviousLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("00:00:10");
        stopwatch.lap();
        stopwatch.advanceTime("00:00:20");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("00:00:10", "00:00:20");
        stopwatch.stop();
        stopwatch.reset();
        assertThat(stopwatch.previousLaps()).isEmpty();
    }


    @Test

    public void resetCannotBeCalledFromReadyState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::reset)
                .withMessage("cannot reset a stopwatch that is not stopped");
    }


    @Test

    public void resetCannotBeCalledFromRunningState() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        assertThatExceptionOfType(IllegalStateException.class)
                .isThrownBy(stopwatch::reset)
                .withMessage("cannot reset a stopwatch that is not stopped");
    }


    @Test

    public void supportsVeryLongLaps() {
        SplitSecondStopwatch stopwatch = new SplitSecondStopwatch();
        stopwatch.start();
        stopwatch.advanceTime("01:23:45");
        assertThat(stopwatch.currentLap()).isEqualTo("01:23:45");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("01:23:45");
        stopwatch.advanceTime("04:01:40");
        assertThat(stopwatch.currentLap()).isEqualTo("04:01:40");
        assertThat(stopwatch.total()).isEqualTo("05:25:25");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("01:23:45", "04:01:40");
        stopwatch.advanceTime("08:43:05");
        assertThat(stopwatch.currentLap()).isEqualTo("08:43:05");
        assertThat(stopwatch.total()).isEqualTo("14:08:30");
        stopwatch.lap();
        assertThat(stopwatch.previousLaps()).containsExactly("01:23:45", "04:01:40", "08:43:05");
    }
}
