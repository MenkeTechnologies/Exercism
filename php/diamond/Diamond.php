<?php

function diamond(string $letter) {
    $distance = ord($letter) - ord('A');
    $res = [];
    for ($i = 0; $i <= $distance; ++$i) {
        $res[$i] = str_repeat(' ', $distance - $i) . chr(ord('A') + $i) . str_repeat(' ', $i);
        $res[$i] .= substr(strrev($res[$i]), 1);
    }
    for ($i = $distance - 1; $i >= 0; --$i) {
        $res[] = $res[$i];
    }
    return $res;
}
