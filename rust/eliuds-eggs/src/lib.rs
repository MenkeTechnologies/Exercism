pub fn egg_count(display_value: u32) -> usize {
    let mut sum = 0usize;
    let mut dup = display_value as usize;
    while dup > 0 {
        sum += dup & 1;
        dup >>= 1
    }
    sum
}
