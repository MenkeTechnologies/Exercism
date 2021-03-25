/// Determines whether the supplied string is a valid ISBN number
pub fn is_valid_isbn(isbn: &str) -> bool {
    let mut tot = 0;
    let mut mult = 10;

    let chars = isbn.chars().filter(|c| *c != '-').collect::<Vec<char>>();

    if chars.len() != 10 {
        return false;
    }

    for ch in chars {

        let i: u32;

        match ch {
            'X' => {
                if mult != 1 {
                    return false;
                }

                i = 10;
            },
            '0'..= '9' => i = char::to_digit(ch, 10).unwrap(),
            _ => return false

        };

        tot += i * mult;

        mult -= 1;


    }

    tot % 11 == 0

}
