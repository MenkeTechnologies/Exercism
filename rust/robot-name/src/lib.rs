use rand::Rng;

#[derive(Default)]
pub struct Robot {
    name: String,
}

impl Robot {
    pub fn new() -> Self {
        let mut r = Robot::default();
        r.name = r.gen_name();
        r
    }

    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn reset_name(&mut self) {
        self.name = self.gen_name();
    }

    fn gen_name(&self) -> String {
        let mut rng = rand::thread_rng();
        format!(
            "{}{}{:03}",
            rng.gen_range('A'..'Z'),
            rng.gen_range('A'..'Z'),
            rng.gen_range(0..1000)
        )
    }
}
