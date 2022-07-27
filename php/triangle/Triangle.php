<?php

class Triangle
{
    public function __construct($a, $b, $c)
    {
        $triangle = [$a, $b, $c];
        sort($triangle);
        list($this->a, $this->b, $this->c) = $triangle;
        $this->set = array_unique($triangle);
    }
    public function kind()
    {
        return match (true) {
            !$this->valid() => throw new Exception(),
            $this->isEquilateral() => 'equilateral',
            $this->isIsosceles() => 'isosceles',
            $this->isScalene() => 'scalene'
        };
    }
    private function valid()
    {
        return $this->a > 0 && $this->b > 0 && $this->c > 0 && $this->a + $this->b >= $this->c;
    }
    private function isEquilateral()
    {
        return count($this->set) == 1;
    }
    private function isIsosceles()
    {
        return count($this->set) <= 2;
    }
    private function isScalene()
    {
        return count($this->set) == 3;
    }
}

