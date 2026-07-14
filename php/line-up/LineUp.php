<?php
function format($name, $number) {
    $suffix = match (true) {
        in_array($number % 100, [11, 12, 13]) => 'th',
        $number % 10 === 1 => 'st',
        $number % 10 === 2 => 'nd',
        $number % 10 === 3 => 'rd',
        default => 'th',
    };
    return "$name, you are the $number$suffix customer we serve today. Thank you!";
}

