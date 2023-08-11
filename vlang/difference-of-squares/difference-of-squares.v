module main

pub fn square_of_sum(n u32) u32 {
    mut sum := u32(0)
    for i in 1 .. n + 1 {
        sum += i
    }
    return sum * sum
}
pub fn sum_of_squares(n u32) u32 {
    mut sum := u32(0)
    for i in 1 .. n + 1 {
        sum += i * i
    }
    return sum
}
pub fn difference(n u32) u32 {
    return square_of_sum(n) - sum_of_squares(n)
}
