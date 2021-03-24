#[derive(Debug)]
pub struct ChessPosition {
    rank: i32,
    file: i32,
}

#[derive(Debug)]
pub struct Queen {
    position: ChessPosition,
}

impl ChessPosition {
    pub fn new(rank: i32, file: i32) -> Option<Self> {
        if rank < 0 || file < 0 || rank >= 8 || file >= 8 {
            return None;
        }

        Some(ChessPosition { rank, file })
    }
}

impl Queen {
    pub fn new(position: ChessPosition) -> Self {
        Queen { position }
    }

    pub fn can_attack(&self, other: &Queen) -> bool {
        //same row/col
        if other.position.rank == self.position.rank || other.position.file == self.position.file {
            return true;
        }

        //diagonal
        if i32::abs(other.position.rank - self.position.rank)
            == i32::abs(other.position.file - self.position.file)
        {
            return true;
        }

        false
    }
}
