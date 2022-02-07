object FlattenArray {
  def flatten(list: List[Any]): List[Any] = list.map {
    case l: List[Any] => flatten(l)
    case i => if (i != null) List(i) else List()
  }.reduce((acc, n) => acc ++ n)
}
