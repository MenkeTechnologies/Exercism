pub fn square(s: u32) -> u64 {
    u64::pow(2, s - 1)
}

pub fn total() -> u64 {
    let sum = (0..=64).into_iter().map(|a| square(a)).fold(0, |a, b| a + b);
    sum
}
