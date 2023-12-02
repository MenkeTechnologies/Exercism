import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

class AppointmentScheduler {
    private static final DateTimeFormatter APPT_FMT = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
    private static final DateTimeFormatter DESC_FMT = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy, 'at' h:mm a");

    public LocalDateTime schedule(String appointmentDateDescription) {
        return LocalDateTime.parse(appointmentDateDescription, APPT_FMT);
    }

    public boolean hasPassed(LocalDateTime appointmentDate) {
        return LocalDateTime.now().isAfter(appointmentDate);
    }

    public boolean isAfternoonAppointment(LocalDateTime appointmentDate) {
        int h = appointmentDate.getHour();

        return h > 11 && h < 18;
    }

    public String getDescription(LocalDateTime appointmentDate) {
        return "You have an appointment on %s.".formatted(appointmentDate.format(DESC_FMT));
    }

    public LocalDate getAnniversaryDate() {
        return LocalDate.of(2023, 9, 15);
    }
}
