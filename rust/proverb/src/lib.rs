pub fn build_proverb(list: &[&str]) -> String {
    let mut str = String::new();
    if list.len() == 0 {
        return str;
    }
    for (i, x) in list.iter().enumerate() {
        if i == list.len() - 1 {
            continue;
        }
        let string = format!("For want of a {} the {} was lost.\n", x, list[i + 1]);
        str.push_str(string.as_str());
    }
    let string = format!("And all for the want of a {}.", list[0]);
    str.push_str(string.as_str());

    str
}
