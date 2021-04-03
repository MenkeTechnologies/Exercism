use std::collections::HashMap;

pub fn char_score(c: char) -> u64 {
    match c {
        'A' | 'E' | 'I' | 'O' | 'U' | 'L' | 'N' | 'R' | 'S' | 'T' => 1,
        'D' | 'G' => 2,
        'B' | 'C' | 'M' | 'P' => 3,
        'F' | 'H' | 'V' | 'W' | 'Y' => 4,
        'K' => 5,
        'J' | 'X' => 8,
        'Q' | 'Z' => 10,
        _ => 0,
    }
}
pub fn score(word: &str) -> u64 {
    let mut m = HashMap::new();

    for ch in 'A'..='Z' {
        m.insert(ch, char_score(ch));
    }

    let uc = word
        .chars()
        .map(|c| c.to_ascii_uppercase())
        .collect::<Vec<char>>();
    uc.iter()
        .map(|c| {
            let sc = m.get(c).unwrap_or(&(0 as u64));
            sc
        })
        .sum()
}
