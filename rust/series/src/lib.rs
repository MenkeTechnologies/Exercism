pub fn series(digits: &str, len: usize) -> Vec<String> {
    if len == 0 {
        vec![String::new(); 6]
    } else {
        digits
            .chars()
            .collect::<Vec<char>>()
            .windows(len)
            .map(|w| w.iter().collect())
            .collect()
    }
}
