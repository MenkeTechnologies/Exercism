use regex::Regex;

pub fn abbreviate(phrase: &str) -> String {
    let re_boundary = Regex::new(r"([\s_-]+)").unwrap();
    let re_camel = Regex::new(r"([a-z])([A-Z])").unwrap();

    re_boundary
        .split(
            re_camel
                .replace_all(phrase, "${1} ${2}")
                .to_string()
                .as_str(),
        )
        .map(|s| s.to_ascii_uppercase().get(0..1).unwrap_or("").to_string())
        .collect::<Vec<String>>()
        .join("")
}
