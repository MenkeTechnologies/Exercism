pub fn check(candidate: &str) -> bool {
    let mut v = vec![];
    for ch in candidate.chars() {
        if ch.is_whitespace() || ch == '-' {
            continue;
        }
        v.push(ch.to_ascii_lowercase());
    }

    let pre = v.len();
    v.sort();
    v.dedup();
    let post = v.len();

    pre == post
}
