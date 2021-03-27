pub fn is_armstrong_number(num: u32) -> bool {
    let mut digits = vec![];
    let mut dup = num;
    loop {
        let digit = dup % 10;
        digits.push(digit);
        if dup < 10 {
            break;
        } else {
            dup /= 10;
        }
    }

    let len: u32 = digits.len() as u32;

    let sum = digits
        .iter()
        .map(|a| u32::pow(*a, len))
        .fold(0, |a, b| a + b);

    sum == num
}
