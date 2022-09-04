use regex::Regex;

pub fn is_valid(code: &str) -> bool {
    let no_ws: String = code.chars().rev().filter(|c| !c.is_whitespace()).collect();

    if no_ws.len() < 2 || Regex::new(r"\D").unwrap().is_match(no_ws.as_str()) {
        false
    } else {
        no_ws
            .chars()
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
