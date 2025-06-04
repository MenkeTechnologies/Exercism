static NUMBERS_TO_WORDS: [&str; 11] = [
    "No", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
];
fn green_bottles(i: usize) -> String {
    format!(
        "{} green bottle{}",
        NUMBERS_TO_WORDS[i],
        if i == 1 { "" } else { "s" }
    )
}
pub fn recite(start_bottles: usize, take_down: usize) -> String {
    ((start_bottles + 1 - take_down)..=start_bottles)
        .rev()
        .fold(String::new(), |acc, i| {
            acc + &format!(
                "
{orig} hanging on the wall,
{orig} hanging on the wall,
And if one green bottle should accidentally fall,
There'll be {rem} hanging on the wall.
",
                rem = green_bottles(i - 1).to_lowercase(),
                orig = green_bottles(i)
            )
        })
}
