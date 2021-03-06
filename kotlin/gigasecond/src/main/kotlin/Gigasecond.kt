import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond(dateTime: LocalDateTime) {

    constructor(date: LocalDate) : this(date.atStartOfDay())

    val date: LocalDateTime = dateTime.plusSeconds(1e9.toLong())
}
