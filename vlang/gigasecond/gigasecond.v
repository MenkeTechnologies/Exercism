module main

import time

fn add_gigasecond(t time.Time) time.Time {
	return t.add_seconds(int(1e9))
}

