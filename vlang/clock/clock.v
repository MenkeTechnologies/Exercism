module main

const (
	day_minutes  = 1440
	minutes_per_hour = 60
)
struct Clock {
    mut: minutes int
}
fn normalize(minutes int) Clock {
	if minutes < 0 {
		return Clock{day_minutes + minutes % day_minutes}
	} else if minutes >= day_minutes {
		return Clock{minutes % day_minutes}
	}
	return Clock{minutes}
}
fn new_clock(hour int, minute int) Clock {
    return normalize(hour * minutes_per_hour + minute)
}
fn (mut c Clock) add_time(minute int) {
    c.minutes = normalize(c.minutes + minute).minutes
}
fn (mut c Clock) subtract_time(minute int) {
    c.minutes = normalize(c.minutes - minute).minutes
}
fn (c Clock) string() string {
    mut hr := c.minutes / minutes_per_hour
    mut min := c.minutes % minutes_per_hour
    return '${hr:02}:${min:02}'
}

