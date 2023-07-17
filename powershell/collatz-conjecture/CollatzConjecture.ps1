Function Invoke-CollatzConjecture() {
    [CmdletBinding()]
    Param(
        [Int64]$Number
    )
    if ( $Number -lt 1 ) {
        Throw "error: Only positive numbers are allowed"
    }
    $cnt = 0
    While ( $Number -gt 1 ) {
        if ( $Number % 2 -eq 0 ) {
            $Number /= 2
        }
        else {
            $Number = 3 * $Number + 1
        }
        ++$cnt
    }
    return $cnt
}
