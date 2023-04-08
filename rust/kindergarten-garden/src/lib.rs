const CHILDREN: [&str; 12] = [
    "Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph",
    "Kincaid", "Larry",
];
pub fn plants(diagram: &str, student: &str) -> Vec<&'static str> {
    let cup_idx = CHILDREN.iter().position(|&s| s == student).unwrap() * 2;
    diagram
        .lines()
        .flat_map(|line| {
            line[cup_idx..=cup_idx + 1].chars().map(|cup| match cup {
                'G' => "grass",
                'C' => "clover",
                'R' => "radishes",
                _ => "violets",
            })
        })
        .collect()
}
