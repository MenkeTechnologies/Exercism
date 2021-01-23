pub fn reply(message: &str) -> &str {
    let chars: String = message.chars().filter(|c| !c.is_whitespace()).collect();

    if chars.is_empty() {
        return "Fine. Be that way!";
    }

    let lowercase: String = message.chars().filter(|c| c.is_ascii_lowercase()).collect();
    let uppercase: String = message.chars().filter(|c| c.is_ascii_uppercase()).collect();

    let all_caps = uppercase.len() != 0 && lowercase.len() == 0;

    if all_caps {
        if chars.ends_with("?") {
            return "Calm down, I know what I'm doing!";
        }
        return "Whoa, chill out!";
    }

    if chars.ends_with("?") {
        return "Sure.";
    }

    "Whatever."
}
