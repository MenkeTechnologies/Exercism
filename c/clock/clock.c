#include "clock.h"
#include <stdio.h>
#include <string.h>

clock_t clock_create(int hour, int minute) {
    hour += minute / 60;
    minute %= 60;
    if (minute < 0) {
        minute += 60;
        hour -= 1;
    }
    hour %= 24;
    if (hour < 0) {
        hour += 24;
    }
    clock_t clock;
    sprintf(clock.text, "%02d:%02d", hour, minute);
    return clock;
}

clock_t clock_add(clock_t clock, int minute_add) {
    int hour, minute;
    sscanf(clock.text, "%d:%d", &hour, &minute);
    return clock_create(hour, minute + minute_add);
}

clock_t clock_subtract(clock_t clock, int minute_subtract) {
    return clock_add(clock, -minute_subtract);
}

bool clock_is_equal(clock_t a, clock_t b) {
    return strcmp(a.text, b.text) == 0;
}
