#[derive(Debug, PartialEq)]
pub struct Dna {
    bases: Vec<char>,
}

#[derive(Debug, PartialEq)]
pub struct Rna {
    bases: Vec<char>,
}

impl Dna {
    pub fn new(dna: &str) -> Result<Dna, usize> {
        let mut d = Dna { bases: vec![] };
        for (i, ch) in dna.chars().enumerate() {
            match ch {
                'C' | 'G' | 'T' | 'A' => d.bases.push(ch),
                _ => {
                    return Err(i);
                }
            }
        }

        Ok(d)
    }

    pub fn into_rna(self) -> Rna {
        let mut r = Rna { bases: vec![] };
        for ch in self.bases {
            match ch {
                'C' => r.bases.push('G'),
                'G' => r.bases.push('C'),
                'T' => r.bases.push('A'),
                'A' => r.bases.push('U'),
                _ => {}
            }
        }

        r
    }
}

impl Rna {
    pub fn new(rna: &str) -> Result<Rna, usize> {
        let mut r = Rna { bases: vec![] };
        for (i, ch) in rna.chars().enumerate() {
            match ch {
                'C' | 'G' | 'U' | 'A' => r.bases.push(ch),
                _ => {
                    return Err(i);
                }
            }
        }
        Ok(r)
    }
}
