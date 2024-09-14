<?php

class RotationalCipher
{
    const LETTERS = "abcdefghijklmnopqrstuvwxyz";

    public function rotate($text, $shift): string
    {
        $to = implode(array_map(fn($n) => self::LETTERS[($n + $shift) % 26], range(0, 25)));
        return strtr($text, self::LETTERS . strtoupper(self::LETTERS), $to . strtoupper($to));
    }
}
