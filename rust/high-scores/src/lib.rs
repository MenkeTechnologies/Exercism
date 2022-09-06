#[derive(Debug)]
pub struct HighScores {
    vec: Vec<u32>,
}

impl HighScores {
    pub fn new(scores: &[u32]) -> Self {
        Self {
            vec: scores.to_vec(),
        }
    }

    pub fn scores(&self) -> &[u32] {
        self.vec.as_slice()
    }

    pub fn latest(&self) -> Option<u32> {
        self.vec.last().cloned()
    }

    pub fn personal_best(&self) -> Option<u32> {
        self.vec.iter().max().cloned()
    }

    pub fn personal_top_three(&self) -> Vec<u32> {
        let mut copy = self.vec.clone();
        copy.sort_by(|a, b| b.cmp(a));
        copy.iter().take(3).map(|a| *a).collect::<Vec<u32>>()
    }
}
