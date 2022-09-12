<?php

function prime(int $number)
{
    if ($number < 1) {
        return false;
    }
    $arr = [2];
    $curr = 3;
    while (count($arr) < $number) {
        $isPrime = true;
        foreach ($arr as $value) {
            if ($curr % $value == 0) {
                $isPrime = false;
                break;
            }
        }
        if ($isPrime) {
            array_push($arr, $curr);
        }
        $curr += 2;
    }

    return $arr[$number - 1];
}
