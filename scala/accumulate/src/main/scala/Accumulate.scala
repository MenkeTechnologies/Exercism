class Accumulate {
  def accumulate[A, B](f: (A) => B, list: List[A]): List[B] = {
    var res: List[B] = List()
    for (elem <- list) {
      res ++= List(f(elem))
    }

    res
  }
}
