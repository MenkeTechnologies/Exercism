pub fn square_of_sum(n: u32) -> u32 {
    let mut sum = 0;
    for num in 0..=n {
        sum += num
    }
    u32::pow(sum, 2)
}

pub fn sum_of_squares(n: u32) -> u32 {
    let mut sum = 0;
    for num in 0..=n {
        sum += u32::pow(num, 2)
    }
    sum
}

pub fn difference(n: u32) -> u32 {
    square_of_sum(n) - sum_of_squares(n)
}
