Function Invoke-PerfectNumbers($Number) {

    if ($Number -lt 1) {
        throw "error: Classification is only possible for positive integers."
    }
    if ($Number -eq 1) { return "deficient"}
    $sum = 0
    foreach($i in 1..($Number / 2)) {
        if( $Number % $i -eq 0) {
            $sum += $i
        }
    }
    if ($sum -eq $Number) { "perfect" }
    elseif ($sum -gt $Number) { "abundant"}
    else { "deficient" }
}
