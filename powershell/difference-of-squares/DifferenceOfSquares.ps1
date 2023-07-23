Function Get-SquareOfSum($Number) {
    $res = 0;
    for ($n=1; $n -le $Number; ++$n)
    {
       $res += $n;
    }
    return [Math]::Pow($res, 2);
}
Function Get-SumOfSquares($Number) {
     $res = 0;
    for ($n=1; $n -le $Number; ++$n)
    {
       $res += [Math]::Pow($n, 2);
    }
    return $res;
}
Function Get-DifferenceOfSquares($Number) {
   return [int](Get-SquareOfSum($Number)) - [int](Get-SumOfSquares($Number));
}
