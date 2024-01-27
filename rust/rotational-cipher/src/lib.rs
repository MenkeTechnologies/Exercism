pub fn rot(first: char, offset: i8, transform: char) -> char {
    let rem = transform as i16 - first as i16 + offset as i16;
    let rem_off = rem.rem_euclid(26) as u8;
    (rem_off + first as u8) as char
}

pub fn rotate(input: &str, offset: i8) -> String {
    input
        .chars()
        .map(|c| match c {
            'a'..='z' => rot('a', offset, c),
            'A'..='Z' => rot('A', offset, c),
            _ => c,
        })
        .collect()
}
