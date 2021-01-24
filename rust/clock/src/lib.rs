use std::fmt::{Display, Formatter, Result};

#[derive(Eq, PartialEq, Debug)]
pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let mut fin_h = hours;
        let mut fin_m = minutes;

        while fin_m >= 60 {
            fin_h += 1;
            fin_m -= 60;
        }
        while fin_m < 0 {
            fin_h -= 1;
            fin_m += 60;
        }

        fin_h %= 24;

        if fin_h < 0 {
            fin_h += 24
        }

        Clock {
            hours: fin_h,
            minutes: fin_m,
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours, minutes + self.minutes)
    }
}

impl Display for Clock {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        write!(f, "{:02}:{:02}", self.hours, self.minutes)
    }
}
