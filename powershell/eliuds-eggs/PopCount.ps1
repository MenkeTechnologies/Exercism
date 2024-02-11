Function Invoke-PopCount($Value) {
    $cnt = 0
    while ($Value -gt 0) {
        $cnt = $cnt + $Value % 2
        $Value = $Value -shr 1
    }

    $cnt
}
