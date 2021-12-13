pub fn factors(n: u64) -> Vec<u64> {
    let mut factors: Vec<u64> = vec![];
    let mut copy = n;
    let mut divisor = 2;

    while copy > 1 {
        while copy % divisor == 0 {
            copy /= divisor;
            factors.push(divisor);
        }
        divisor += 1;
    }

    factors
}
