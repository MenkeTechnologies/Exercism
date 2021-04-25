pub type Error = ();

pub struct Scale {
    tonic: String,
    tonic_uc: String,
    intervals: Vec<usize>,
}

impl Scale {
    const SHARPS: [&'static str; 12] = [
        "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#",
    ];
    const FLATS: [&'static str; 12] = [
        "A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab",
    ];
    const USE_SHARP: [&'static str; 14] = [
        "C", "G", "D", "A", "a", "E", "B", "F#", "e", "b", "f#", "c#", "g#", "d#",
    ];

    pub fn new(tonic: &str, intervals: &str) -> Result<Scale, Error> {
        let tonic_uc = Scale::getuc(tonic);

        Ok(Self {
            tonic: tonic.to_string(),
            tonic_uc,
            intervals: intervals
                .chars()
                .map(|c| match c {
                    'm' => 1,
                    'M' => 2,
                    _ => 999,
                })
                .collect(),
        })
    }

    fn getuc(tonic: &str) -> String {
        let mut v: Vec<char> = tonic.chars().collect();
        v[0].make_ascii_uppercase();

        let mut tonic_uc = String::from(v[0]);
        if v.len() == 2 {
            tonic_uc.push(v[1]);
        }
        tonic_uc
    }

    pub fn chromatic(tonic: &str) -> Result<Scale, Error> {
        let tonic_uc = Scale::getuc(tonic);
        Ok(Self {
            tonic: tonic.to_string(),
            tonic_uc,
            intervals: vec![1; 12],
        })
    }

    pub fn enumerate(&self) -> Vec<String> {
        let scale = if Self::is_sharp(self.tonic.as_str()) {
            Self::SHARPS
        } else {
            Self::FLATS
        };

        let mut index = scale.iter().position(|&r| r == self.tonic_uc).unwrap();

        let mut v = vec![];

        for i in &self.intervals {
            let i1 = index % scale.len();
            let note = scale[i1];
            v.push(note.to_string());
            index += *i as usize;
        }

        v
    }

    fn is_sharp(tonic: &str) -> bool {
        Self::USE_SHARP.contains(&tonic)
    }
}
