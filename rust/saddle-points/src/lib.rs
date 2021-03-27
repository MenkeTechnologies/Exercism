pub fn find_saddle_points(input: &[Vec<u64>]) -> Vec<(usize, usize)> {
    let mut v: Vec<(usize, usize)> = vec![];

    for (i, row) in input.iter().enumerate() {
        for (j, elem) in row.iter().enumerate() {
            let row_max = row.iter().max().unwrap();
            let col_min = input.iter().map(|r| &r[j]).min().unwrap();
            if elem == row_max && elem == col_min {
                v.push((i, j));
            }
        }
    }

    v
}
