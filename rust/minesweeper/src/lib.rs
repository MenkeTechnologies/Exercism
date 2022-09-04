fn count_mines(minefield: &[&str], row: usize, col: usize) -> u8 {
    let mut cnt = 0;

    for r in row.saturating_sub(1)..=row + 1 {
        for c in col.saturating_sub(1)..=col + 1 {
            if let Some(&str) = minefield.get(r) {
                if let Some(ch) = str.chars().nth(c) {
                    if ch == '*' {
                        cnt += 1
                    }
                }
            }
        }
    }

    cnt
}

fn numeric_hint(count: u8) -> char {
    match count {
        0 => ' ',
        _ => char::from('0' as u8 + count),
    }
}

pub fn annotate(minefield: &[&str]) -> Vec<String> {
    minefield
        .iter()
        .enumerate()
        .map(|(r, row)| {
            row.chars()
                .enumerate()
                .map(|(c, ch)| match ch {
                    '*' => '*',
                    _ => numeric_hint(count_mines(minefield, r, c)),
                })
                .collect()
        })
        .collect()
}
