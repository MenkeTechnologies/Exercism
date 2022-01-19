use std::collections::HashMap;

pub fn brackets_are_balanced(string: &str) -> bool {
    let mut stk = vec![];
    let map: HashMap<char, char> = vec![('[', ']'), ('{', '}'), ('(', ')')].into_iter().collect();

    string.chars().all(|c| {
        if map.contains_key(&c) {
            stk.push(c)
        } else if map.values().any(|&v| v == c) {
            if stk.is_empty() || map[(&stk.pop().unwrap())] != c {
                return false;
            }
        }
        true
    }) && stk.is_empty()
}
