use std::collections::HashMap;

pub fn count(nt: char, dna: &str) -> Result<usize, char> {
    match create_dict(&dna) {
        Err(e) => Err(e),
        Ok(h) =>
            match h.get(&nt) {
                Some(o) => Ok(*o),
                None => Err(nt)
            }
    }
}

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    create_dict(&dna)
}

fn create_dict(dna: &&str) -> Result<HashMap<char, usize>, char> {
    let mut h = HashMap::new();
    h.insert('A', 0);
    h.insert('C', 0);
    h.insert('G', 0);
    h.insert('T', 0);
    for c in dna.chars() {
        match c {
            'A' | 'C' | 'G' | 'T' => h.insert(c, h.get(&c).unwrap() + 1),
            _ => return Err(c)
        };
    }
    Ok(h)
}
