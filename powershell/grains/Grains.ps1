Function Get-GrainSquare($Number) {
    if ($Number -gt 64 -or $Number -lt 1) {
        throw "square must be between 1 and 64"
    }
    [BigInt]::Pow(2, $Number-1)
}

Function Get-GrainTotal() {
    $total = 0
    for ($i = 1; $i -le 64; ++$i) {
        $total += Get-GrainSquare -Number $i
    }
    $total
}
