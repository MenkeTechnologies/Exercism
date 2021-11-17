// This stub file contains items which aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

const SPEED_MULT: f64 = 221.;
const MIN_PER_HR: u32 = 60;

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let rate = match speed {
        1..=4 => 1.,
        5..=8 => 0.9,
        9..=10 => 0.77,
        _ => 0.
    };
    SPEED_MULT * speed as f64 * rate
}


pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / MIN_PER_HR
}
