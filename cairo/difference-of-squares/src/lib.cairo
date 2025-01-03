pub fn squareOfSum(number: u64) -> u64 {
    let mut sum = 0;
    let mut current = 1;
    while current <= number {
        sum += current;
        current += 1;
    };
    sum * sum
}

pub fn sumOfSquares(number: u64) -> u64 {
    let mut sum = 0;
    let mut current = 1;
    while current <= number {
        sum += current * current;
        current += 1;
    };
    sum
}

pub fn differenceOfSquares(number: u64) -> u64 {
    squareOfSum(number) - sumOfSquares(number)
}
