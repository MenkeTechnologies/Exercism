<?php


function placeQueen(int $x, int $y): bool
{
    if( $x < 0 || $y < 0 ) throw new InvalidArgumentException('The rank and file numbers must be positive.');
    if( $x > 7 || $y > 7 ) throw new InvalidArgumentException('The position must be on a standard size chess board.');
    return true;
}
function canAttack(array $whiteQueen, array $blackQueen): bool
{
    if (!placeQueen($whiteQueen[0],$whiteQueen[1]) ) return false;
    if (!placeQueen($blackQueen[0],$blackQueen[1]) ) return false;

    $dx = abs($whiteQueen[0] - $blackQueen[0]);
    $dy = abs($whiteQueen[1] - $blackQueen[1]);

    return $dx === 0 || $dy === 0 || $dx == $dy;
}

