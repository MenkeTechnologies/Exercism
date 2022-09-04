pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    let v: Vec<_> = factors.iter().filter(|&&i| i != 0).collect();

    (1..limit).filter(|f| v.iter().any(|&&i| f % i == 0)).sum()
}
