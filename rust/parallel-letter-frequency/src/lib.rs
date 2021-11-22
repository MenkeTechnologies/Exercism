use std::collections::HashMap;

use rayon::prelude::*;

pub fn frequency(input: &[&str], _w: usize) -> HashMap<char, usize> {
    input
        .into_par_iter()
        .map(|t| {
            t.chars()
                .filter(|c| c.is_alphabetic())
                .map(|c| c.to_lowercase().next().unwrap())
                .fold(HashMap::new(), |mut acc, c| {
                    *acc.entry(c).or_insert(0) += 1;
                    acc
                })
        })
        .reduce(
            || HashMap::new(),
            |mut acc, m| {
                m.into_iter()
                    .for_each(|(ch, cnt)| *acc.entry(ch).or_insert(0) += cnt);
                acc
            },
        )
}
