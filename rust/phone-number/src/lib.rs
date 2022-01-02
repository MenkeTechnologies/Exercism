use regex::Regex;

pub fn number(user_number: &str) -> Option<String> {
    let regex =
        Regex::new(r"^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$")
            .unwrap();

    match regex.captures(user_number) {
        Some(captures) => Some(format!(
            "{}{}{}",
            captures.get(2).unwrap().as_str(),
            captures.get(3).unwrap().as_str(),
            captures.get(4).unwrap().as_str(),
        )),
        _ => None,
    }
}
