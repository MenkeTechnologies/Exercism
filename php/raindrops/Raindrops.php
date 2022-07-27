<?php

const DICT = [
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong',
];

function raindrops(int $n): string
{
    $r = '';
    foreach (DICT as $key => $sound) $r .= $n % $key === 0 ? $sound : "";

    return $r ?: (string) $n;
}
