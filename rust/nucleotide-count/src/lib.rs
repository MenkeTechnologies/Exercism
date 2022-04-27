use std::collections::HashMap;

pub fn count(nucleotide: char, dna: &str) -> Result<usize, char> {
    let h = common(&dna);

    return match h {
        Err(e) => Err(e),
        Ok(h) => {

            let option = h.get(&nucleotide);
            return match option {
                Some(o) => {
                    Ok(*o)
                },
                None => {
                    Err(nucleotide)
                }
            }

        },
    };


}

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    let h = common(&dna);

    return match h {
        Err(e) => Err(e),
        Ok(h) => {
            Ok(h)
        },
    };

}

fn common(dna: &&str) -> Result<HashMap<char, usize>, char> {
    let mut h = HashMap::new();
    h.insert('A', 0);
    h.insert('C', 0);
    h.insert('G', 0);
    h.insert('T', 0);
    for ch in dna.chars() {
        match ch {
            'A' | 'C' | 'G' | 'T' => {
                let new_val = h.get(&ch).unwrap() + 1;
                h.insert(ch, new_val);
            }
            _ => {
                return Err(ch);
            }
        };
    }
    return Ok(h);
}
