module main

struct LinkedList {
mut:
    len int
    head ?&ListNode = none
}
struct ListNode {
    val int
    node ?&ListNode = none
}
fn new() LinkedList {
    return LinkedList{}
}
fn from_array(array []int) LinkedList {
    mut lst := new()
    for value in array { lst.push(value) }
    return lst
}
fn (lst LinkedList) is_empty() bool {
    return lst.len == 0
}
fn (mut lst LinkedList) push(data int) {
    lst.head = &ListNode {
        val: data
        node: lst.head or { none }
    }
    lst.len++
}
fn (mut lst LinkedList) pop() ?int {
    data := lst.peek()?
    lst.head = (*lst.head?).node?
    lst.len--
    return data
}
fn (lst LinkedList) peek() ?int {
    return (*lst.head?).val
}
fn (lst LinkedList) to_array() []int {
    mut dup := lst.reverse()
    mut ary := []int{ cap: dup.len }
    for _ in 0 .. 2 * dup.len + 1 {
        ary << dup.pop() or { continue }
    }
    return ary
}
fn (lst LinkedList) reverse() LinkedList {
    mut dup := lst
    mut res := new()
    for _ in 0 .. 2 * dup.len + 1 {
        res.push(dup.pop() or { continue } )
    }
    return res
}
