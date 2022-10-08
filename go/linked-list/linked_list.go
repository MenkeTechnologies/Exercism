package linkedlist

import (
	"errors"
)

type Element struct {
	data int
	next *Element
}
type List struct {
	head *Element
	size int
}

func New(nums []int) *List {
	list := &List{}
	for i := range nums {
		list.Push(nums[i])
	}
	return list
}
func (l *List) Size() int {
	return l.size
}
func (l *List) Push(n int) {
	l.head = &Element{n, l.head}
	l.size++
}
func (l *List) Pop() (int, error) {
	if l.size < 1 {
		return 0, errors.New("list is empty")
	}
	head, data := l.head, l.head.data
	l.head = head.next
	head.next = nil // Avoid memory leak
	l.size--
	return data, nil
}
func (l *List) Array() []int {
	array := make([]int, l.size)
	for i, head := l.size-1, l.head; head != nil; i, head = i-1, head.next {
		array[i] = head.data
	}
	return array
}
func (l *List) Reverse() *List {
	revList := &List{}
	for head := l.head; head != nil; head = head.next {
		revList.Push(head.data)
	}
	return revList
}
