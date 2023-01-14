<?php
class Series
{
    public function __construct(private $digits) {}
    public function largestProduct($span) {
        
        if ($span < 0 || strlen($this->digits) < $span || ($this->digits && !is_numeric($this->digits))) {
            throw new \InvalidArgumentException;
        }
        if (!strlen($this->digits) || !$span) {
            return 1;
        }
        
        $max = 0;
        for ($i = 0; $i < strlen($this->digits) - $span + 1; ++$i) {
            $max = max($max, array_product(str_split(substr($this->digits, $i, $span))));
        }
        return $max;
    }
}