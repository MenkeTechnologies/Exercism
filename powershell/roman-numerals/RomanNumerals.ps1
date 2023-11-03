$RomanNumerals = @{
    1000 = 'M'
    900 = 'CM'
    500 = 'D'
    400 = 'CD'
    100 = 'C'
    90 = 'XC'
    50 = 'L'
    40 = 'XL'
    10 = 'X'
    9 = 'IX'
    5 = 'V'
    4 = 'IV'
    1 = 'I'
}
Function Get-RomanNumerals($Number) {
    if ($Number -le 0 -or $Number -ge 4000) {
        Throw "Number has to be positive integer in range of 1-3999."
    }
    $res = ''
    foreach ($k in $RomanNumerals.Keys | Sort-Object -Descending) {
        $res += $RomanNumerals[$k] * [Math]::floor($Number / $k)
        $Number %= $k
    }
    $res
}
