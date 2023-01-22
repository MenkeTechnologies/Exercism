object Series {
  def  slices(len : Int, s: String) = s.toList.map(_.asDigit).sliding(len).toList
}
