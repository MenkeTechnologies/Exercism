fn rotate(c: char) -> char {
    if c.is_ascii_digit() {
        c
    } else {
        (b'z' - (c as u8 - b'a')) as char
    }
}

/// "Encipher" with the Atbash cipher.
pub fn encode(plain: &str) -> String {
    let chars = plain
        .to_lowercase()
        .chars()
        .filter(char::is_ascii_alphanumeric)
        .map(rotate)
        .collect::<Vec<char>>();

    chars.chunks(5).fold(&mut Vec::<String>::new(), |acc, n| {
        acc.push(n.iter().cloned().collect());
        acc
    }).join(" ")
}

/// "Decipher" with the Atbash cipher.
pub fn decode(cipher: &str) -> String {
    cipher
        .chars()
        .filter(char::is_ascii_alphanumeric)
        .map(rotate)
        .collect()
}
