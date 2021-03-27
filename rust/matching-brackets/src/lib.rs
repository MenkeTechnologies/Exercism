pub fn brackets_are_balanced(string: &str) -> bool {
    let mut v = vec![];

    for char in string.chars() {
        match char {
            '[' | '{' | '(' => v.push(char),
            ']' | '}' | ')' => {
                if v.is_empty() {
                    return false;
                }
                let last_char = v.pop().unwrap();
                if char == ']' && last_char != '[' {
                    return false;
                }
                if char == ')' && last_char != '(' {
                    return false;
                }
                if char == '}' && last_char != '{' {
                    return false;
                }
            }

            _ => {}
        }
    }

    if v.is_empty() {
        return true;
    }

    false
}
