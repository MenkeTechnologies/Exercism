import java.time.{Duration, LocalDate, LocalDateTime}

object Gigasecond {
  def add(startDate: LocalDate): LocalDateTime = add(startDate.atStartOfDay())

  def add(startDateTime: LocalDateTime): LocalDateTime = startDateTime.plus(Duration.ofSeconds(1e9.toLong))
}
