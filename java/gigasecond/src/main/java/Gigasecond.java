import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

public class Gigasecond {
    LocalDateTime ldt;

    public Gigasecond(LocalDate moment) {
        ldt = moment.atStartOfDay();
    }

    public Gigasecond(LocalDateTime moment) {
        ldt = moment;
    }

    public LocalDateTime getDateTime() {
        return ldt.plus((long) 1e9, ChronoUnit.SECONDS);
    }
}
