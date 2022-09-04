import scala.annotation.tailrec

object BinarySearch {
  @tailrec
  def aux(input: List[Int], lo: Int, hi: Int, target: Int): Option[Int] = {
    val mid: Int = (lo + hi) / 2
    if (lo > hi) None
    else if (input(mid) < target) aux(input, mid + 1, hi, target)
    else if (input(mid) > target) aux(input, lo, mid - 1, target)
    else Some(mid)
  }

  def find(input: List[Int], target: Int) = aux(input, 0, input.length - 1, target)
}
