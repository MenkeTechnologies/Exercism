use std::collections::HashMap;

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    let mut dict = HashMap::new();
    dict.insert('G', 0);
    dict.insert('T', 0);
    dict.insert('A', 0);
    dict.insert('C', 0);
    dna.chars().try_fold(dict, |mut acc, c| match c {
        'A' | 'T' | 'G' | 'C' => {
            *acc.entry(c).or_default() += 1;
            Ok(acc)
        }
        _ => Err(c),
    })
}

pub fn count(nt: char, dna: &str) -> Result<usize, char> {
    match nucleotide_counts(dna) {
        Ok(dict) => match dict.get(&nt) {
            Some(&cnt) => Ok(cnt),
            _ => Err(nt)
        }
        Err(dna) => Err(dna),
    }
}
