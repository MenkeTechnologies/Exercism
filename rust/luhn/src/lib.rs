/// Check a Luhn checksum.
pub fn is_valid(code: &str) -> bool {
    let invalid: Vec<char> = code.chars().filter(|ch| !(ch.is_whitespace() || ch.is_numeric())).collect();

    if !invalid.is_empty() {
        return false;
    }
    let no_ws: String = code.chars().filter(|ch| !ch.is_whitespace()).collect();

    if no_ws.len() < 2 {
        return false;
    }

    let sum = no_ws.chars().rev().map(|ch| ch.to_digit(10).unwrap()).enumerate().fold(0, |mut sum, (cnt, int)| {
        if cnt % 2 == 1 {
            let mut doubled = int * 2;
            if doubled > 9 {
                doubled -= 9;
            }
            sum += doubled
        } else {
            sum += int
        }
        sum
    });

    sum % 10 == 0
}
