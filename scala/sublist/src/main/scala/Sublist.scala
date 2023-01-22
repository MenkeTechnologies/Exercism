object Sublist extends Enumeration {
  val Equal, Unequal, Sublist, Superlist = Value

  def sublist(a: List[Int], b: List[Int]) = if (a equals b) Equal
  else if (a containsSlice b) Superlist else if (b containsSlice a) Sublist else Unequal
}
