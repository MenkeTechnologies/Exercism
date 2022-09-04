use std::iter::FromIterator;

#[derive(Clone, Eq, PartialEq)]
struct Node<T>
where
    T: Clone,
{
    data: T,
    prev: Option<Box<Node<T>>>,
}

pub struct SimpleLinkedList<T>
where
    T: Clone,
{
    counter: usize,
    tail: Option<Box<Node<T>>>,
}

impl<T: Clone> SimpleLinkedList<T> {
    pub fn new() -> Self {
        SimpleLinkedList {
            counter: 0,
            tail: None,
        }
    }

    pub fn is_empty(&self) -> bool {
        self.counter == 0
    }

    pub fn len(&self) -> usize {
        self.counter
    }

    pub fn push(&mut self, _element: T) {
        let n = Node {
            data: _element,
            prev: self.tail.take(),
        };

        self.tail = Some(Box::new(n));

        self.counter += 1;
    }

    pub fn pop(&mut self) -> Option<T> {
        self.tail.take().map(|n| {
            self.counter -= 1;
            self.tail = n.prev;
            n.data
        })
    }

    pub fn peek(&self) -> Option<&T> {
        self.tail.as_ref().map(|n| &n.data)
    }

    pub fn rev(self) -> SimpleLinkedList<T> {
        let mut ll = SimpleLinkedList::new();
        let mut prev = self.tail;

        while let Some(n) = prev {
            ll.push(n.data);
            prev = n.prev;
        }

        ll
    }
}

impl<T: Clone> FromIterator<T> for SimpleLinkedList<T> {
    fn from_iter<I: IntoIterator<Item = T>>(_iter: I) -> Self {
        let mut ll = SimpleLinkedList::new();

        for e in _iter {
            ll.push(e);
        }

        ll
    }
}

impl<T: Clone> Into<Vec<T>> for SimpleLinkedList<T> {
    fn into(self) -> Vec<T> {
        let mut v = vec![];

        let mut prev = self.tail;

        while let Some(n) = prev {
            v.push(n.data);
            prev = n.prev;
        }

        v.reverse();
        v
    }
}
