use std::ops::Rem;

pub struct Matcher<T> {
    pred: fn(T) -> bool,
    replacement: String,
}

impl<T> Matcher<T> {
    pub fn new<S: ToString>(pred: fn(T) -> bool, replacement: S) -> Matcher<T> {
        Self {
            pred,
            replacement: replacement.to_string(),
        }
    }
}

pub struct Fizzy<T> {
    matchers: Vec<Matcher<T>>,
}

impl<T: ToString + Clone> Fizzy<T> {
    pub fn new() -> Self {
        Self { matchers: vec![] }
    }
    pub fn add_matcher(mut self, matcher: Matcher<T>) -> Self {
        self.matchers.push(matcher);
        self
    }
    pub fn apply(self, iter: impl Iterator<Item = T>) -> impl Iterator<Item = String> {
        iter.map(move |n| {
            let res: String = self
                .matchers
                .iter()
                .filter(|m| (m.pred)(n.clone()))
                .map(|matcher| matcher.replacement.clone())
                .collect();

            if res.is_empty() {
                n.to_string()
            } else {
                res
            }
        })
    }
}

pub fn fizz_buzz<T>() -> Fizzy<T>
where
    T: Rem<Output = T> + ToString + PartialEq + From<u8> + Clone,
{
    Fizzy::new()
        .add_matcher(Matcher::new(|n: T| n % 3.into() == 0.into(), "fizz"))
        .add_matcher(Matcher::new(|n: T| n % 5.into() == 0.into(), "buzz"))
}
