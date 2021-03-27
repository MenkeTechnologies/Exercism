pub struct PascalsTriangle {
    rows: Vec<Vec<u32>>,
}

impl PascalsTriangle {
    pub fn new(row_count: u32) -> Self {
        let mut p = PascalsTriangle { rows: vec![] };

        for row in 0..row_count {
            let mut v: Vec<u32> = vec![];

            if row == 0 {
                v.push(1);
            } else if row == 1 {
                v.push(1);
                v.push(1);
            } else {
                v.push(1);

                for col_idx in 1..row {
                    let prev_row_idx: usize = (row - 1) as usize;

                    let prev_row = &p.rows[prev_row_idx];

                    let prev_left_idx = (col_idx - 1) as usize;
                    let prev_right_idx = col_idx as usize;

                    v.push(prev_row[prev_left_idx] + prev_row[prev_right_idx]);
                }

                v.push(1);
            }

            p.rows.push(v);
        }

        p
    }

    pub fn rows(&self) -> Vec<Vec<u32>> {
        self.rows.to_owned()
    }
}
