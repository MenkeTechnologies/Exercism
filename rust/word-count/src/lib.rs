use std::collections::HashMap;

fn filter_word(word: &str) -> String {
    word.chars()
        .filter(|c| c.is_alphanumeric() || c == &'\'')
        .collect::<String>()
        .to_lowercase()
        .trim_matches('\'')
        .to_string()
}

/// Count occurrences of words.
pub fn word_count(words: &str) -> HashMap<String, u32> {
    let mut counts = HashMap::new();

    words
        .split_whitespace()
        .flat_map(|w| w.split(','))
        .map(filter_word)
        .filter(|word| !word.is_empty())
        .for_each(|w| {
            let x = counts.get(w.as_str()).unwrap_or(&0).clone();
            counts.insert(w, x + 1);
        });

    counts
}
