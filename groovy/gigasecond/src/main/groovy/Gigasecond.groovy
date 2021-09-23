import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond {

    static def add(LocalDate mom) {
        add(mom.atStartOfDay())

    }

    static def add(LocalDateTime mom) {

        mom.plusSeconds(1e9 as long)

    }

}
