/// Check a Luhn checksum.
pub fn is_valid(code: &str) -> bool {
    let no_ws: Vec<char> = code.chars().filter(|ch| !ch.is_whitespace()).collect();

    if no_ws.len() < 2 || no_ws.iter().any(|ch| !ch.is_ascii_digit()) {
        return false;
    }
    no_ws.iter().rev().map(|ch| ch.to_digit(10).unwrap()).enumerate().fold(0, |mut sum, (cnt, int)| {
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
    }) % 10 == 0
}
