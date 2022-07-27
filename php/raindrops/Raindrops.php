<?php

const DICT = [
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong',
];

function raindrops(int $n): string
{
    $r = '';
    foreach (DICT as $key => $sound) {
        if ($n % $key === 0) {
            $r .= $sound;
        }
    }
    return $r ?: (string) $n;
}
