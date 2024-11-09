pub fn reverse(s: ByteArray) -> ByteArray {
    let mut reversed: ByteArray = Default::default();
    let mut i = s.len();
    while i > 0 {
        i -= 1;
        reversed.append_byte(s[i]);
    };
    reversed
}
