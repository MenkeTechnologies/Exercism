use std::fmt::{Display, Formatter, Result};

static MAP: [(u32, &str); 13] = [
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I"),
];

pub struct Roman {
    s: String,
}

impl Display for Roman {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        write!(f, "{}", self.s)
    }
}

impl From<u32> for Roman {
    fn from(n: u32) -> Self {
        let mut dup = n;
        Self {
            s: MAP.iter().map(|(inc, s)| {
                let mut r = String::new();
                r.push_str(s.repeat((dup / inc) as usize).as_str());
                dup %= inc;
                r
            }).collect()
        }
    }
}
