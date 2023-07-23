Function Invoke-Darts($X, $Y) {
    
    $distance = [Math]::Sqrt([Math]::Pow($X, 2) + [Math]::Pow($Y, 2))
    if ($distance -le 1) {
        return 10
    }
    if ($distance -le 5) {
        return 5
    }
    if ($distance -le 10) {
        return 1
    }
    return 0
}
