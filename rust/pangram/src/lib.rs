/// Determine whether a sentence is a pangram.
pub fn is_pangram(sentence: &str) -> bool {
    ('a'..='z').fold(true, |total, ch| {
        total && sentence.to_ascii_lowercase().contains(ch)
    })
}
