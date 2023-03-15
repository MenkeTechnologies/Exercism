import gleam/int
import gleam/string

pub type Clock {
  Clock(hour: Int, minute: Int)
}
pub fn create(hour hour: Int, minute minute: Int) -> Clock {
  create_(hour * 60 + minute)
}
fn create_(minutes) {
  case minutes < 0 {
      False -> Clock({minutes / 60} % 24, minutes % 60)
      True -> create_(minutes + 60 * 24)
    }
}
pub fn add(clock: Clock, minutes minutes: Int) -> Clock {
  create(clock.hour, clock.minute + minutes)
}
pub fn subtract(clock: Clock, minutes minutes: Int) -> Clock {
  create(clock.hour, clock.minute - minutes)
}
fn pad (n: Int) {
    string.pad_left(int.to_string(n), 2, "0")
}

pub fn display(clock: Clock) -> String {
  pad(clock.hour) <> ":" <> pad(clock.minute)
}

