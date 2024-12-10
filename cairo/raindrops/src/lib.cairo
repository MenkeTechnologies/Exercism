pub fn convert(x: u64) -> ByteArray {
    let mut res = "";
    if x % 3 == 0 {
        res += "Pling";
    }
    if x % 5 == 0 {
        res += "Plang";
    }
    if x % 7 == 0 {
        res += "Plong";
    }
    if res == "" {
        format!("{x}")
    } else {
        res
    }
}
