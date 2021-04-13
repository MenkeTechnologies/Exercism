pub struct Luhn {
    code: String,
}

impl Luhn {
    pub fn is_valid(&self) -> bool {
        if self
            .code
            .chars()
            .any(|c| !c.is_numeric() && !c.is_whitespace())
        {
            return false;
        }

        let mut sum = 0;
        let mut len = 0;
        let nums = self.code.chars().filter(|c| c.is_numeric()).rev();
        for (i, d) in nums.enumerate() {
            len += 1;
            sum += match (i % 2, d.to_digit(10)) {
                (1, Some(d)) => {
                    if d > 4 {
                        d * 2 - 9
                    } else {
                        d * 2
                    }
                }
                (0, Some(d)) => d,
                (_, _) => 0,
            }
        }
        len > 1 && sum % 10 == 0
    }
}

/// Here is the example of how the From trait could be implemented
/// for the &str type. Naturally, you can implement this trait
/// by hand for the every other type presented in the test suite,
/// but your solution will fail if a new type is presented.
/// Perhaps there exists a better solution for this problem?
impl<T> From<T> for Luhn
where
    T: ToString,
{
    fn from(input: T) -> Self {
        Self {
            code: input.to_string(),
        }
    }
}
