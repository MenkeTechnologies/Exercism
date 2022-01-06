object RotationalCipher {
  def rotate(str: String, i: Int) = {
    str.map{c =>
      c match {
        case a if a.isLower =>  ((c - 'a' + i ) % 26) + 'a'
        case a if a.isUpper => ((c - 'A' + i ) % 26) + 'A'
        case a => a
      }
    }.map{_.toChar}.mkString

  }

}
