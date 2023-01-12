pub trait Luhn {
    fn valid_luhn(&self) -> bool;
}
impl<T> Luhn for T
where
    T: ToString,
{
    fn valid_luhn(&self) -> bool {
        let no_ws: String = self
            .to_string()
            .chars()
            .filter(|c| !c.is_whitespace())
            .collect();

        no_ws.len() > 1
            && no_ws.chars().all(|c| c.is_digit(10))
            && no_ws
                .chars()
                .rev()
                .map(|c| c.to_digit(10).unwrap())
                .enumerate()
                .map(|(i, n)| {
                    let mut doubled = n;
                    if i % 2 == 1 {
                        doubled *= 2
                    }
                    if doubled > 9 {
                        doubled -= 9;
                    }
                    doubled
                })
                .sum::<u32>()
                % 10
                == 0
    }
}
