Enum Triangle {
    EQUILATERAL
    ISOSCELES
    SCALENE
}
Function Get-Triangle($Sides) {
    if ($Sides | Where-Object {$_ -le 0}) {
        Throw "All side lengths must be positive."
    }
    $sorted = $Sides | Sort-Object
    if ($sorted[0] + $sorted[1] -lt $sorted[2]) {
        Throw "Side lengths violate triangle inequality."
    }
    switch (($Sides | Select-Object -Unique).Count) {
        1       { return [Triangle]::EQUILATERAL }
        2       { return [Triangle]::ISOSCELES }
        default { return [Triangle]::SCALENE }
    }
}
