pub fn is_armstrong_number(num: usize) -> bool {
    let len = num.to_string().chars().count() as u32;
    num == num
        .to_string()
        .chars()
        .map(|c| (c.to_digit(10).expect("Non digit") as usize).pow(len))
        .sum()
}
