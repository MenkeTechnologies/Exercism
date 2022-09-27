<?php

function toOrdinal(int $number): string
{
    $num = strval($number);
    if ($num == '0') {
        return '0';
    }
    if ($num == '1') {
        return '1st';
    }
    if ($num[0] == '1') {
        return $num . 'th';
    }
    if ($num[-1] == '2') {
        return $num . 'nd';
    }
    if ($num[-1] == '3') {
        return $num . 'rd';
    }

    return $num . 'th';
}
