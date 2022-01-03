object HighScores {
  def report(ints: List[Int]) = {
    val late = latest(ints)
    val top = personalBest(ints)
    var p2 = "That's"
    if (top != late) {
      p2 = s"That's ${top - late} short of"
    }
    s"Your latest score was ${late}. $p2 your personal best!"
  }

  def personalTop(ints: List[Int]) = {
    ints.sorted.reverse.take(3)
  }

  def personalBest(ints: List[Int]) = {
    ints.max
  }

  def latest(ints: List[Int]) = {
    ints.last
  }

}
