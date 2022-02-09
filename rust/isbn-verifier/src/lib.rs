/// Determines whether the supplied string is a valid ISBN number
pub fn is_valid_isbn(isbn: &str) -> bool {
    let chars = isbn.chars().filter(|&c| c.is_numeric() || c == 'X').collect::<Vec<char>>();

    if chars.len() != 10 {
        return false
    }

    chars.into_iter().rev().enumerate().map(|(i, ch)|
        match ch {
            'X' => 10,
            _ => ch.to_digit(10).unwrap() * (i as u32 + 1),
        }).sum::<u32>() % 11 == 0
}
