const MAX_PINS: u16 = 10;
const MAX_FRAMES: usize = 10;

#[derive(Debug, PartialEq)]
pub enum Error {
    NotEnoughPinsLeft,
    GameComplete,
}

#[derive(Debug)]
pub struct Frame {
    index: usize,
    rolls: Vec<u16>,
    bonus: Vec<u16>,
}

impl Frame {
    fn new(index: usize, pins: u16) -> Self {
        Frame {
            index,
            rolls: vec![pins],
            bonus: vec![],
        }
    }

    fn is_open(&self) -> bool {
        match (self.rolls.len(), self.rolls.first()) {
            (1, Some(&MAX_PINS)) => false,
            (2, _) => false,
            _ => true,
        }
    }

    fn is_strike(&self) -> bool {
        match self.rolls.first() {
            Some(&MAX_PINS) => true,
            _ => false,
        }
    }

    fn is_spare(&self) -> bool {
        match (self.rolls.len(), self.rolls.iter().sum()) {
            (2, MAX_PINS) => true,
            _ => false,
        }
    }

    fn is_open_for_bonus(&self) -> bool {
        match (self.is_strike(), self.is_spare(), self.bonus.len()) {
            (true, _, n) if n <= 1 => true,
            (false, true, 0) => true,
            _ => false,
        }
    }

    fn is_complete(&self) -> bool {
        !self.is_open() && !self.is_open_for_bonus()
    }

    fn add_roll(&mut self, pins: u16) -> Result<(), Error> {
        if self.score() + pins > MAX_PINS {
            return Err(Error::NotEnoughPinsLeft);
        }
        self.rolls.push(pins);
        Ok(())
    }

    fn add_bonus(&mut self, pins: u16) -> Result<(), Error> {
        if self.is_open_for_bonus() {
            match (self.index, self.bonus.first()) {
                (9, Some(n)) if *n < MAX_PINS && n + pins > MAX_PINS => {
                    return Err(Error::NotEnoughPinsLeft);
                }
                _ => {
                    self.bonus.push(pins);
                }
            }
        }

        Ok(())
    }

    fn score(&self) -> u16 {
        let pin_score: u16 = self.rolls.iter().sum();
        let bonus: u16 = self.bonus.iter().sum();
        pin_score + bonus
    }
}

#[derive(Default)]
pub struct BowlingGame {
    current_frame: Option<Frame>,
    frames: Vec<Frame>,
}

impl BowlingGame {
    pub fn new() -> Self {
        BowlingGame {
            current_frame: None,
            frames: Vec::with_capacity(MAX_FRAMES)
        }
    }

    pub fn roll(&mut self, pins: u16) -> Result<(), Error> {
        if pins > MAX_PINS {
            return Err(Error::NotEnoughPinsLeft);
        }

        if self.is_completed() {
            return Err(Error::GameComplete);
        }

        for frame in self.frames.iter_mut() {
            frame.add_bonus(pins)?;
        }

        if self.frames.len() < MAX_FRAMES {
            match &mut self.current_frame {
                Some(frame) => {
                    frame.add_roll(pins)?;

                    if !frame.is_open() {
                        self.end_frame()
                    }
                }
                _ => {
                    if pins == MAX_PINS {
                        self.frames.push(self.new_frame(pins))
                    } else {
                        self.current_frame = Some(self.new_frame(pins));
                    }
                }
            }
        }

        Ok(())
    }

    fn new_frame(&self, pins: u16) -> Frame {
        Frame::new(self.frames.len(), pins)
    }

    fn end_frame(&mut self) {
        let frame = std::mem::replace(&mut self.current_frame, None).unwrap();
        self.frames.push(frame);
    }

    fn all_frames_completed(&self) -> bool {
        self.frames.iter().all(Frame::is_complete)
    }

    fn is_completed(&self) -> bool {
        self.frames.len() == MAX_FRAMES && self.all_frames_completed()
    }

    pub fn score(&self) -> Option<u16> {
        if self.is_completed() {
            Some(self.frames.iter().map(|x| x.score()).sum())
        } else {
            None
        }
    }
}