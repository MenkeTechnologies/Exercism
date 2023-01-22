object Series {
  def largestProduct(len: Int, sequence: String) =
    if (len < 0 || len > sequence.size || sequence.exists(!_.isDigit)) None
    else if (sequence.isEmpty || len == 0) Some(1) else
      Some(sequence.sliding(len).map(_.map(_.asDigit).product).max)
}
