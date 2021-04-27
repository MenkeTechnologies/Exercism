use std::collections::{HashMap, HashSet};

fn get_map(word: String) -> HashMap<char, u32> {
    word.chars().fold(HashMap::new(), |mut map, c| {
        let v = map.entry(c).or_insert(0);
        *v += 1;
        map
    })
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &'a [&str]) -> HashSet<&'a str> {
    let cnt = word.len();
    let map = get_map(word.to_lowercase());

    possible_anagrams
        .clone()
        .into_iter()
        .filter(|&&p| {
            let pmap = get_map(p.to_lowercase());
            cnt == p.len() && word.to_lowercase() != p.to_lowercase() && map == pmap
        })
        .map(|p| *p)
        .collect::<HashSet<&str>>()
}
