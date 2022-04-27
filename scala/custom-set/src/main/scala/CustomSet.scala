
class CustomSet[+T](list: Seq[T]){
  val _v = list.distinct
}
object CustomSet {
  def fromList[T](list: Seq[T]) = new CustomSet[T](list)
  def empty[T](set: CustomSet[T]) = set._v.isEmpty
  def member[T](set: CustomSet[T], elem: T) = set._v.contains(elem)
  def isSubsetOf[T]( s1: CustomSet[T], s2: CustomSet[T] ) = s1._v.forall(s2._v.contains(_))
  def isDisjointFrom[T]( s1: CustomSet[T], s2: CustomSet[T] ) = !s1._v.exists(s2._v.contains(_))
  def isEqual[T]( s1: CustomSet[T], s2: CustomSet[T] ) = s1._v.length == s2._v.length && isSubsetOf(s1, s2)
  def insert[T]( set: CustomSet[T], elem: T ): CustomSet[T] = new CustomSet[T](set._v ++ Seq(elem))
  def intersection[T]( s1: CustomSet[T], s2: CustomSet[T] ) = new CustomSet[T](s1._v.filter(s2._v.contains(_)))
  def union[T]( s1: CustomSet[T], s2: CustomSet[T] ) = new CustomSet[T](s1._v ++ s2._v)
  def difference[T]( s1: CustomSet[T], s2: CustomSet[T] ) = new CustomSet[T](s1._v diff s2._v)


}
