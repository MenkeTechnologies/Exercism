/// Return the Hamming distance between the strings,
/// or None if the lengths are mismatched.
pub fn hamming_distance(s1: &str, s2: &str) -> Option<usize> {
    if s1.len() != s2.len() {
        return None;
    }

    let mut sum: usize = 0;

    for (i, ch) in s1.chars().enumerate() {
        if ch != s2.chars().nth(i).unwrap() {
            sum += 1;
        }
    }

    Some(sum)
}
