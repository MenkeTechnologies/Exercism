Function Get-SumOfMultiples($Multiples, $Limit) {
    ((1..($limit - 1)).Where({ $n = $_; $Multiples.Where({ $n % $_ -eq 0 }, "First").Count }) | Measure-Object -Sum).Sum
}
