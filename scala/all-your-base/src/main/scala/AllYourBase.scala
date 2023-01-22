import scala.collection.mutable.ListBuffer

object AllYourBase {
  def rebase(inputBase: Int, digits: List[Int], outputBase: Int): Option[List[Int]] = {
    if (inputBase < 2 || outputBase < 2 || digits.exists(num => num < 0 || num >= inputBase)) None
    else {
      var sum = digits .foldLeft(0) { (acc, n) => acc * inputBase + n }
      if (sum == 0) return Some(List(0))
      val output = ListBuffer[Int]()
      while (sum > 0) {
        output.insert(0, sum % outputBase)
        sum /= outputBase
      }
      Some(output.toList)
    }
  }
}
