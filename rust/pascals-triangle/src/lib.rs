pub struct PascalsTriangle {
    rows: Vec<Vec<u32>>,
}

impl PascalsTriangle {
    pub fn new(row_count: u32) -> Self {
        if row_count <= 0 {
            Self { rows: vec![] }
        } else {
            Self {
                rows: (2..=row_count).fold(vec![vec![1]], |acc, _| {
                    let prev = acc.last().unwrap().clone();
                    [
                        acc.as_slice(),
                        vec![[
                            &[1],
                            prev.iter()
                                .take(prev.len() - 1)
                                .enumerate()
                                .map(|(i, n)| n + prev[i + 1])
                                .collect::<Vec<u32>>()
                                .as_slice(),
                            &[1],
                        ]
                        .concat()]
                        .as_slice(),
                    ]
                    .concat()
                }),
            }
        }
    }

    pub fn rows(&self) -> Vec<Vec<u32>> {
        self.rows.clone()
    }
}
