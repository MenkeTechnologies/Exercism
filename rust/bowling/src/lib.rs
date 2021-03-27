#[derive(Debug, PartialEq)]
pub enum Error {
    NotEnoughPinsLeft,
    GameComplete,
}

pub struct BowlingGame {
    frames: Vec<u16>,
    roll: bool
}

impl BowlingGame {
    pub fn new() -> Self {
        BowlingGame {
            frames: vec![],
            roll: false

        }
    }

    pub fn roll(&mut self, pins: u16) -> Result<(), Error> {
        unimplemented!("Record that {} pins have been scored", pins);
    }

    pub fn score(&self) -> Option<u16> {
        unimplemented!("Return the score if the game is complete, or None if not.");
    }
}
