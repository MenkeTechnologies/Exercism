/// Check a Luhn checksum.
pub fn is_valid(code: &str) -> bool {
    let code_no_space : String = code.chars().filter(|c| !c.is_whitespace()).collect();
    if code_no_space.len() <= 1 {
        return false;
    }

    let mut str = String::new();
    let mut cnt = 1;
    for ch in code_no_space.chars().rev() {

        if !ch.is_numeric() {
            return false;
        }
        if cnt % 2 == 0 {
            let mut doubled = ch.to_digit(10).unwrap() * 2;
            if doubled > 9 {
                doubled -= 9;
            }

            let i3 = (doubled + 48) as u8;
            let doubled_ch = char::from(i3);
            str.push(doubled_ch);
        } else {
            str.push(ch)
        }

        cnt += 1
    }

    let sum = str.chars().fold(0, |sum, ch| {
        sum + ch.to_digit( 10).unwrap()
    });
    
    if sum % 10 != 0 {
        return false;
    }

    true
}
