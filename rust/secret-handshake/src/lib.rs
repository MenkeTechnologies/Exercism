const DICT: [(u8, &str); 4] = [(1, "wink"), (2, "double blink"), (4, "close your eyes"), (8, "jump")];

pub fn actions(n: u8) -> Vec<&'static str> {
    let mut res = DICT.iter().filter(|(k, _v)| n & k > 0).map(|(_k, v)| &v[..]).collect::<Vec<&str>>();
    if n & 16 > 0 {
        res.reverse()
    }
    res
}
