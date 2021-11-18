// This stub file contains items which aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mut map: HashMap<&str, i32> = HashMap::new();

    for &word in magazine {
        map.insert(word, *map.get(word).get_or_insert(&0) + 1);
    }

    for &word in note {

        match map.get_mut(word) {
            None => return false,
            Some(&mut v) => {
                if v == 0 {
                    return false
                }

                map.insert(word, v - 1);
            }
        }
    }

    true
}
