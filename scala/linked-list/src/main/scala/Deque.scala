case class Node[T](v: T, var prev: Option[Node[T]] = None, var next: Option[Node[T]] = None)

case class Deque[T](var hd: Option[Node[T]] = None, var tl: Option[Node[T]] = None) {
  def push(item: T) = {
    tl = tl.map(node => Node(item, Some(node), None)).orElse(Some(Node(item)))
    tl.map(_.prev.map(_.next = tl))
    hd = hd.orElse(tl)
  }

  def pop() = {
    val res = tl.map(node => {
      node.prev.foreach(_.next = None)
      node.v
    })
    tl = tl.flatMap(_.prev)
    if (tl.isEmpty) hd = None
    res
  }

  def shift() = {
    val res = hd.map(node => {
      node.next.foreach(_.next = None)
      node.v
    })
    hd = hd.flatMap(_.next)
    if (hd.isEmpty) tl = None
    res
  }

  def unshift(item: T) = {
    hd = hd.map(node => Node(item, None, Some(node))).orElse(Some(Node(item)))
    hd.map(_.next.map(_.prev = hd))
    tl = tl.orElse(hd)
  }
}
