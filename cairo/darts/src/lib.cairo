pub fn score(x: i64, y: i64) -> u8 {
    let dist = x * x + y * y;
    if dist <= 1 { 10 }
    else if dist <= 25 { 5 }
    else if dist <= 100 { 1 }
    else { 0}
}

