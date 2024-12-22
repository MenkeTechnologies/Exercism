pub fn distance(strand1: ByteArray, strand2: ByteArray) -> u256 {
    assert!(strand1.len() == strand2.len(), "strands must be of equal length");

    let mut i = 0;
    let mut cnt = 0;
    while i < strand1.len() {
        if strand1[i] != strand2[i] {
            cnt += 1;
        }
        i +=1
    };

    cnt
}

