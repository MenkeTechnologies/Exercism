case class Triangle(s1: Double, s2: Double, s3: Double) {

  val l = List(s1, s2, s3).sorted
  val s = scala.collection.mutable.Set[Double]()
  s ++= l

  val isValid = {
    !s.exists(_ <= 0) && l.head + l(1) >= l(2)
  }

  def scalene = {
    isValid && s.size == 3
  }

  def isosceles = {

    isValid && s.size == 2 || s.size == 1
  }

  def equilateral = {

    isValid && s.size == 1
  }


}

