object QueenAttack {
  def canAttack(queen: Queen, other: Queen) = {
    val dx = (queen.x - other.x).abs
    val dy = (queen.y - other.y).abs

    dx == 0 || dy == 0 || dx == dy

  }

}

object Queen {

  def create(x: Int, y: Int): Option[Queen] = {
    if (x >= 0 && x < 8 && y >= 0 && y < 8) {
      Some(Queen(x, y))
    } else {
      None
    }
  }

}

case class Queen(x: Int, y: Int)
