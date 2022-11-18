class Node(object):
    def __init__(self, value, next=None, prev=None):
        self.value = value
        self.next = next
        self.prev = prev


class LinkedList:
    def __init__(self):
        self.head = Node(None)
        self.head.next = self.head.prev = self.head

    def _unlink(self, node):
        node.prev.next = node.next
        node.next.prev = node.prev
        return node.value

    def _link(self, value, prev):
        node = Node(value, prev.next, prev)
        node.prev.next = node
        node.next.prev = node

    def shift(self):
        return self._unlink(self.head.next)

    def unshift(self, value):
        self._link(value, self.head)

    def pop(self):
        return self._unlink(self.head.prev)

    def push(self, value):
        self._link(value, self.head.prev)
