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
        .filter(|&&p| target.to_lowercase() != p.to_lowercase() && sorted == lcsort(p))
        .map(|p| *p)
        .collect()
}
