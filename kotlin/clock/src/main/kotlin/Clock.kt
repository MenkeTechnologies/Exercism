data class Clock(private var hours: Int, private var minutes: Int) {
    private val MINUTES_IN_HOUR = 60
    private val HOURS_IN_DAY = 24

    init {
        normalize()
    }

    private fun normalize() {
        while (minutes >= MINUTES_IN_HOUR) {
            minutes -= MINUTES_IN_HOUR
            ++hours
        }
        while (minutes < 0) {
            minutes += MINUTES_IN_HOUR
            --hours
        }
        while (hours >= HOURS_IN_DAY) {
            hours -= HOURS_IN_DAY
        }
        while (hours < 0) {
            hours += HOURS_IN_DAY
        }
    }

    fun add(m: Int) {
        minutes += m
        normalize()
    }

    fun subtract(m: Int) {
        minutes -= m
        normalize()
    }

    override fun toString() = "%02d:%02d".format(hours, minutes)
}
