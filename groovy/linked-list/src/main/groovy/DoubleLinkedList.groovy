import groovy.transform.ToString

class DoubleLinkedList<T> {
    @ToString
    private class Node<T> {
        T value
        Node previous
        Node next
    }
    
    private Node<T> first
    private Node<T> last

    void push(T value) {
        def newLast = new Node<T>(value: value, previous: last)
        if (last) last.next = newLast
        last = newLast
        if (!first) first = last
    }

    void unshift(T value) {
        def newFirst = new Node<T>(value: value, next: first)
        if (first) first.previous = newFirst
        first = newFirst
        if (!last) last = first
    }

    T pop() {
        if (!last) throw new RuntimeException('Cannot pop an empty list')
        def value = last.value
        last = last.previous
        value
    }

    T shift() {
        if (!first) throw new RuntimeException('Cannot shift an empty list')
        def value = first.value
        first = first.next
        value
    }

}
