private data class Node<T>(var next: Node<T>?, var prev: Node<T>?, val value: T)
class Deque<T> {
    private var hd: Node<T>? = null
    private var tail: Node<T>? = null
    fun unshift(t: T) = hd.let {
        hd = Node(it, null, t)
        it?.prev = hd
        if (tail == null) tail = hd
    }

    fun shift(): T? = hd.let {
        if (tail == it) tail = null
        hd = it?.next
        hd?.prev = null
        it?.value
    }

    fun push(t: T) = tail.let {
        tail = Node(null, it, t)
        it?.next = tail
        if (hd == null) hd = tail
    }

    fun pop(): T? = tail.let {
        if (hd == it) hd = null
        tail = it?.prev
        tail?.next = null
        it?.value
    }
}
