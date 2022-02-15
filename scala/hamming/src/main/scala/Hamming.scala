object Hamming {
  def distance(s1: String, s2: String) =
    if (s1.length != s2.length) { None }
    else Some(s1.zip(s2).count(t => t._1 != t._2))
}
