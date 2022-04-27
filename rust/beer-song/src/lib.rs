
pub fn verse(n: u32) -> String {
    let mut orig = String::from("No more bottles");
    let mut orig2 = String::from("no more bottles");
    let mut orig3 = String::from("no more bottles");
    let mut num = String::from("one");
    if n >= 3 {
        orig = format!("{} bottles", n);
        orig2 = format!("{} bottles", n);
        orig3 = format!("{} bottles", n - 1);
    } else if n == 2 {
        orig = format!("{} bottles", n);
        orig2 = format!("{} bottles", n);
        orig3 = format!("{} bottle", n - 1);
    } else if n == 1 {
        orig = format!("{} bottle", n);
        orig2 = format!("{} bottle", n);
        num = String::from("it");
    }

    if n >= 1 {
        return format!("{} of beer on the wall, {} of beer.\nTake {} down and pass it around, {} of beer on the wall.\n", orig, orig2, num, orig3);
    } else {
        if n >= 2 {
            orig3 = format!("{} bottles", 99);
        } else {
            orig3 = format!("{} bottles", 99);
        }
        return format!("{} of beer on the wall, {} of beer.\nGo to the store and buy some more, {} of beer on the wall.\n", orig, orig2, orig3);
    }
}

pub fn sing(start: u32, end: u32) -> String {
    let mut str = String::new();
    for num in (end..=start).rev() {
        str.push_str(verse(num).as_str());
        str.push_str("\n");
    }
    str.pop();
    str
}
