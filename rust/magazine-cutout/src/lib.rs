use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mag_hash = magazine.iter().fold(HashMap::new(), |mut acc, &s| {
        *acc.entry(s).or_insert(0) += 1;
        acc
    });

    let note_hash = note.iter().fold(HashMap::new(), |mut acc, &s| {
        *acc.entry(s).or_insert(0) += 1;
        acc
    });

    note_hash
        .iter()
        .all(|(&k, v)| matches!(mag_hash.get(k), Some(val) if val >= v))
}
