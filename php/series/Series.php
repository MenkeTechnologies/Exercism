<?php

function slices($number, $winsize) {
    $numberSize = strlen($number);
    if ($winsize > $numberSize || $winsize === 0) {
        throw new InvalidArgumentException('Invalid arguments');
    }
    $slices = [];
    for ($i = 0; $i <= $numberSize - $winsize; $i++) {
        $slices[] = substr($number, $i, $winsize);
    }
    return $slices;
}
