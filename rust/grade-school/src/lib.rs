use std::collections::HashMap;

#[allow(clippy::new_without_default)]
pub struct School {
    dict: HashMap<u32, Vec<String>>,
}

impl School {
    pub fn new() -> School {
        Self {
            dict: HashMap::new(),
        }
    }

    pub fn add(&mut self, gr: u32, student: &str) {
        self.dict
            .entry(gr)
            .or_insert(Vec::new())
            .push(String::from(student));
    }

    pub fn grades(&self) -> Vec<u32> {
        let mut r: Vec<u32> = self.dict.keys().cloned().collect();
        r.sort();
        r.dedup();
        r
    }
    pub fn grade(&self, gr: u32) -> Vec<String> {
        match self.dict.get(&gr) {
            Some(studs) => {
                let mut r = studs.to_owned();
                r.sort();
                r
            }
            _ => vec![],
        }
    }
}
