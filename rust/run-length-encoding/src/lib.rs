use itertools::Itertools;

pub fn encode(source: &str) -> String {
    source
        .chars()
        .group_by(|&c| c)
        .into_iter()
        .map(|(c, g)| {
            let str = match g.count() {
                1 => c.to_string(),
                n => format!("{}{}", n, c),
            };

            str
        })
        .collect()
}

pub fn decode(source: &str) -> String {
    let mut output = String::new();
    let mut grp = String::new();

    for ch in source.chars() {
        if ch.is_numeric() {
            grp.push(ch);
        } else {
            let n: usize = grp.parse().unwrap_or(1);
            output += ch.to_string().repeat(n).as_str();
            grp.clear();
        }
    }

    output
}
