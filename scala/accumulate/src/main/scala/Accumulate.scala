import scala.collection.mutable.ListBuffer

class Accumulate {
  def accumulate[A, B](f: (A) => B, list: List[A]): List[B] = {
    list.foldLeft(ListBuffer[B]()){ _ += f(_) }.toList
  }
}
