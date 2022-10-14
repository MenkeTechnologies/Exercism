<?php

class SimpleCipher
{
    public function __construct(string $key = null)
    {
        if (isset($key) && (!ctype_alpha($key) || $key !== strtolower($key))) {
            throw new InvalidArgumentException();
        }
        $this->key = $key ?? random_key();
    }
    public function encode(string $plainText): string
    {
        $split = str_split($plainText);
        $l = strlen($this->key);
        foreach ($split as $i => &$c) {
            $c = chr((ord($this->key[$i % $l]) + ord($c) - 2 * ord('a') + 26) % 26 + ord('a'));
        }
        return implode($split);
    }
    public function decode(string $cipherText): string
    {
        $split = str_split($cipherText);
        $l = strlen($this->key);
        foreach ($split as $i => &$c) {
            $c = chr((ord($c) - ord($this->key[$i % $l]) + 26) % 26 + ord('a'));
        }
        return implode($split);
    }
}
function random_key(): string
{
    return implode(array_fill(0, 100, chr(ord('a') + rand(0, 26))));
}
