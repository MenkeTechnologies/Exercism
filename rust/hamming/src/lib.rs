pub fn hamming_distance(s1: &str, s2: &str) -> Option<usize> {
    if s1.len() != s2.len() {
        return None;
    }

    let mut sum: usize = 0;

    for (i, c) in s1.chars().enumerate() {
        if c != s2.chars().nth(i).unwrap() {
            sum += 1;
        }
    }

    Some(sum)
}
