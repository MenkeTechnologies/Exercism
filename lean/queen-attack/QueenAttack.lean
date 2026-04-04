namespace QueenAttack

structure Queen where
  row : Int
  col : Int
  h : row >= 0 ∧ row < 8 ∧ col >= 0 ∧ col < 8
  deriving BEq, Repr

def create? (row col : Int) : Option Queen :=
  if h : row >= 0 ∧ row < 8 ∧ col >= 0 ∧ col < 8 then
    some { row, col, h }
  else none

def canAttack (white black : Queen) : Bool :=
  let dx := white.row - black.row
  let dy := white.col - black.col
  dx == 0 || dy == 0 || dx.natAbs == dy.natAbs

end QueenAttack
