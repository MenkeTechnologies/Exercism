import scala.collection.mutable.ListBuffer

object Strain {
  def discard[T](list: Seq[T], clo: T => Boolean) = {
    list.foldLeft(ListBuffer[T]()) {
      (acc, n) => if (!clo(n)) acc += n else acc
    }
  }

  def keep[T](list: Seq[T], clo: T => Boolean) = {
    list.foldLeft(ListBuffer[T]()) {
      (acc, n) => if (clo(n)) acc += n else acc
    }
  }

}
