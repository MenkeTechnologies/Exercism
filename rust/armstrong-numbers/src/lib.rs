pub fn is_armstrong_number(num: u32) -> bool {
    num == num
        .to_string()
        .chars()
        .map(|d| {
            u32::pow(
                d.to_digit(10).unwrap(),
                num.to_string().chars().count() as u32,
            )
        })
        .sum()
}
