<?php

class ListOps
{
    public function append(array $list1, array $list2): array
    {
        return [...$list1, ...$list2];
    }
    public function concat(array $list1, array ...$lstn): array
    {
        return array_reduce($lstn, fn ($acc, $lst) => [...$acc, ...$lst], $list1);
    }
    public function filter(callable $f, array $lst): array
    {
        return array_values(array_filter($lst, $f));
    }
    public function length(array $lst): int
    {
        return count($lst);
    }
    public function map(callable $f, array $lst): array
    {
        return array_map($f, $lst);
    }
    public function foldl(callable $f, array $lst, $acc)
    {
        return array_reduce($lst, $f, $acc);
    }
    public function foldr(callable $f, array $lst, $acc)
    {
        return array_reduce($this->reverse($lst), $f, $acc);
    }
    public function reverse(array $lst): array
    {
        return array_reverse($lst);
    }
}

