use std::collections::BTreeMap;

pub fn transform(h: &BTreeMap<i32, Vec<char>>) -> BTreeMap<char, i32> {
    let mut r = BTreeMap::<char, i32>::new();

    for (&score, letters) in h {
        for letter in letters {
            let lc = letter.to_ascii_lowercase();
            r.insert(lc, score);
        }
    }

    r
}
