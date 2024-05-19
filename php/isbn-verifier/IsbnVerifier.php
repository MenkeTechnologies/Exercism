<?php

class IsbnVerifier
{
    public function isValid(string $s): bool
    {
        if (!preg_match('/^\d-?\d{3}-?\d{5}-?[\dX]$/', $s)) {
            return false;
        }
        $rev = strrev(str_replace([" ", "-"], "", $s));
        $sum = 0;
        foreach (str_split($rev) as $i => $digit) {
            $sum += $digit === "X" ? 10 : $digit * ($i + 1);
        }
        return $sum % 11 === 0;
    }
}
