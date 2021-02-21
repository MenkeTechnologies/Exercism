use std::collections::HashMap;

// This annotation prevents Clippy from warning us that `School` has a
// `fn new()` with no arguments, but doesn't implement the `Default` trait.
//
// Normally, it's good practice to just do what Clippy tells you, but in this
// case, we want to keep things relatively simple. The `Default` trait is not the point
// of this exercise.
#[allow(clippy::new_without_default)]
pub struct School {
    m: HashMap<String, u32>
}

impl School {
    pub fn new() -> School {
        School { m: HashMap::new() }
    }

    pub fn add(&mut self, grade: u32, student: &str) {
        self.m.insert(String::from(student), grade);
    }

    pub fn grades(&self) -> Vec<u32> {
        let mut values: Vec<u32> = self.m.values().cloned().collect();
        values.dedup_by(|a, b| a == b);
        values.sort();
        values
    }

    // If `grade` returned a reference, `School` would be forced to keep a `Vec<String>`
    // internally to lend out. By returning an owned vector of owned `String`s instead,
    // the internal structure can be completely arbitrary. The tradeoff is that some data
    // must be copied each time `grade` is called.
    pub fn grade(&self, grade: u32) -> Vec<String> {
        let mut students:Vec<String> = vec![];
        for (k,v) in &self.m {
            if *v == grade {
                students.push(k.clone());
            }
        }

        students.sort();

        students
    }
}
