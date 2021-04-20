use regex::Regex;

pub fn translate(input: &str) -> String {
    let vowel = Regex::new(r"^(?:[aeiou]|yt|xr)").unwrap();
    let consonant = Regex::new(r"(qu|[^aeiuo][^aeiouyq]*(?:qu|q)?)(.*)").unwrap();

    input
        .split_whitespace()
        .map(|word| {
            if vowel.is_match(word) {
                format!("{}{}", word, "ay")
            } else {
                consonant.replace(word, "${2}${1}ay").to_string()
            }
        })
        .collect::<Vec<_>>()
        .join(" ")
}
