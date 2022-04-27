pub fn tens_from_digit(n: u64) -> String {
    let s = match n {
        0 => "",
        1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine",
        _ => "err"
    };
    String::from(s)
}

fn get_place(idx: usize) -> String {
    let place;
    match idx + 1 {
        1 => place = "",
        4 => place = "thousand",
        7 => place = "million",
        10 => place = "billion",
        13 => place = "trillion",
        16 => place = "quadrillion",
        19 => place = "quintillion",
        _ => place = "N/A"
    }
    String::from(place)
}

pub fn teen_from_digit(n: u64) -> String {
    let s = match n {
        0 => "ten",
        1 => "eleven",
        2 => "twelve",
        3 => "thirteen",
        4 => "fourteen",
        5 => "fifteen",
        6 => "sixteen",
        7 => "seventeen",
        8 => "eighteen",
        9 => "nineteen",
        _ => "err"
    };
    String::from(s)
}

pub fn twenties_from_digit(n: u64) -> String {
    let s = match n {
        2 => "twenty",
        3 => "thirty",
        4 => "forty",
        5 => "fifty",
        6 => "sixty",
        7 => "seventy",
        8 => "eighty",
        9 => "ninety",
        _ => "err"
    };
    String::from(s)
}

pub fn encode(n: u64) -> String {
    let mut fin = String::new();
    let mut vec = vec![];
    let mut num = n;

    if num == 0 {
        return String::from("zero");
    }

    loop {
        let r = num % 10;
        vec.push(r);
        if num < 10 {
            break;
        }
        num /= 10
    }

    for (i, v) in vec.iter().step_by(3).enumerate() {
        let mut str = String::new();
        let idx = 3 * i;
        let mut places = false;
        let place = get_place(idx);
        let c1 = v;

        if *c1 > 0 {
            places = true;
        }

        match vec.get(idx + 2) {
            Some(c3) => {
                if *c3 >= 1 {
                    places = true;
                    str = format!("{} hundred{}", tens_from_digit(*c3), str)
                }
            }
            None => {}
        }
        match vec.get(idx + 1) {
            Some(c2) => {
                if *c2 >= 1 {
                    places = true;
                }
                if *c2 >= 2 {
                    if *c1 == 0 {
                        str = format!("{} {}", str, twenties_from_digit(*c2))
                    } else {
                        str = format!("{} {}-{}", str, twenties_from_digit(*c2), tens_from_digit(*c1))
                    }
                } else if *c2 >= 1 {
                    str = format!("{} {}", str, teen_from_digit(*c1));
                } else {
                    str = format!("{} {}", str, tens_from_digit(*c1))
                }
            }
            None => {
                str = format!("{} {}", str, tens_from_digit(*c1))
            }
        }
        if places {
            fin = format!("{} {} {}", str.trim(), place, fin)
        }
    }


    String::from(fin.trim())
}

