use std::collections::BTreeMap;

pub fn transform(h: &BTreeMap<i32, Vec<char>>) -> BTreeMap<char, i32> {
    let mut map = BTreeMap::<char, i32>::new();

    for k in h.keys() {
        if h.contains_key(k) {
            for v in h.get(k).unwrap() {
                let f = v.to_ascii_lowercase();
                map.insert(f, *k);
            }
        }
    }

    map
}
