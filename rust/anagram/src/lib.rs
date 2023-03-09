use std::collections::HashSet;

fn lcsort(s: &str) -> Vec<char> {
    let mut l: Vec<char> = s.to_lowercase().chars().collect();
    l.sort();
    l
}

pub fn anagrams_for<'a>(target: &str, possible_anagrams: &'a [&str]) -> HashSet<&'a str> {
    let sorted = lcsort(target);
    possible_anagrams
        .iter()
        .filter(|&&s| target.to_lowercase() != s.to_lowercase() && sorted == lcsort(s))
        .map(|s| *s)
        .collect()
}
