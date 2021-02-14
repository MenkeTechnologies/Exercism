use std::collections::HashMap;

pub fn count(nucleotide: char, dna: &str) -> Result<usize, char> {
    let hmap = common(dna);

    return match hmap {
        Err(ch) => Err(ch),
        Ok(map) => {
            let cnt_opt = map.get(&nucleotide);

            return match cnt_opt {
                Some(cnt) => Ok(*cnt),
                None => Err(nucleotide),
            };
        }
    };
}

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    let hmap = common(dna);

    return match hmap {
        Err(ch) => Err(ch),
        Ok(map) => Ok(map),
    };
}

fn common(dna: &str) -> Result<HashMap<char, usize>, char> {
    let mut map = HashMap::new();
    map.insert('A', 0);
    map.insert('C', 0);
    map.insert('G', 0);
    map.insert('T', 0);
    for ch in dna.chars() {
        match ch {
            'A' | 'C' | 'G' | 'T' => {
                let new_val = map.get(&ch).unwrap() + 1;
                map.insert(ch, new_val);
            }
            _ => return Err(ch),
        };
    }
    Ok(map)
}
