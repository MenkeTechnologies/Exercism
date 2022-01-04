
object Isogram {
  def isIsogram(str: String): Boolean =
    str.filter(_.isLetter).map(_.toLower)
      .groupBy(c=>c).forall(_._2.length == 1)

}
