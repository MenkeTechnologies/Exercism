#[derive(Debug, PartialEq, Eq)]
pub struct Palindrome {
    num: u64,
}

impl Palindrome {
    pub fn new(a: u64, b: u64) -> Palindrome {
        Self { num: a * b }
    }

    pub fn value(&self) -> u64 {
        self.num
    }

    pub fn insert(&mut self, a: u64, b: u64) {
        self.num = a * b
    }
}

pub fn palindrome_products(min: u64, max: u64) -> Option<(Palindrome, Palindrome)> {
    let mut v = vec![];
    for i in min..=max {
        for j in i..=max {
            if is_palindrome(i * j) {
                v.push(i * j)
            }
        }
    }

    if v.is_empty() { return None; }

    let mut min = v[0];
    let mut max = v[0];
    v.into_iter().for_each(|n| {
        if n > max {
            max = n;
        }
        if n < min {
            min = n;
        }
    });

    Some((Palindrome { num: min }, Palindrome { num: max }))
}

fn is_palindrome(num: u64) -> bool {
    let mut n = num;
    let mut v = vec![];
    while n != 0 {
        v.push(n % 10);
        n /= 10;
    }
    let o = v.clone();
    v.reverse();

    o == v
}
