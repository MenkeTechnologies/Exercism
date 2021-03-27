pub fn factors(n: u64) -> Vec<u64> {
    let mut factors: Vec<u64> = vec![];
    let mut p_factors: Vec<u64> = vec![];

    for num in 1..=n {
        if n % num == 0 {
            factors.push(num);
        }
    }

    let mut copy = n;
    for x in factors {
        while copy % x == 0 && x != 1 {
            copy /= x;
            p_factors.push(x)
        }
    }

    p_factors
}
