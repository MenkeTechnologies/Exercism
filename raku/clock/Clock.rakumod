unit class Clock;

has $.hour is rw;
has $.minute is rw;

method time {
    while $.minute >= 60 {
        $.minute -= 60;
        ++$.hour;
    }

     while $.minute < 0 {
        $.minute += 60;
        --$.hour;
    }

    ($.hour % 24, $.minute % 60).fmt("%02d", ":")
}

method add-minutes ($amount) {
    $.minute += $amount;
    self
}
method subtract-minutes ($amount) {
    $.minute -= $amount;
    self
}
