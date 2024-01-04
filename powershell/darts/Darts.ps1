Function Invoke-Darts($X, $Y) {
    $dist = [Math]::Sqrt([Math]::Pow($X, 2) + [Math]::Pow($Y, 2))

    if ($dist -gt 10) {
        return 0
    }
    if ($dist -gt 5) {
        return 1
    }
    if ($dist -gt 1) {
        return 5
    }
    10
}
