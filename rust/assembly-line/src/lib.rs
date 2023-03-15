const SPEED_MULT: f64 = 221.;
const MIN_PER_HR: u32 = 60;

pub fn production_rate_per_hour(speed: u8) -> f64 {
    SPEED_MULT * speed as f64 * match speed {
        1..=4 => 1.,
        5..=8 => 0.9,
        9..=10 => 0.77,
        _ => 0.
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / MIN_PER_HR
}

