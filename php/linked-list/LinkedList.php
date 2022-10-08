<?php

class LinkedList
{
    private $items = [];
    private $lo = 0;
    private $hi = 0;
    public function push(int $v) {
        $this->lo -= empty($this->items) ? 0 : 1;
        $this->items[$this->lo] = $v;
    }
    public function pop() {
        $tmp = $this->items[$this->lo];
        unset($this->items[$this->lo]);
        $this->lo += empty($this->items) ? 0 : 1;
        return $tmp;
    }
    public function shift() {
        $tmp = $this->items[$this->hi];
        unset($this->items[$this->hi]);
        $this->hi -= empty($this->items) ? 0 : 1;
        return $tmp;
    }
    public function unshift(int $v) {
        $this->hi += empty($this->items) ? 0 : 1;
        $this->items[$this->hi] = $v;
    }
}
