<?php

function maskify(string $s): string
{
    $len = strlen($s);
    for($i = 1; $i < $len - 4; ++$i){
        if ($s[$i] !== '-') {
            $s[$i] = '#';
        }
    }
    return $s;
}

