Function Invoke-Rebase($Digits, $InputBase, $OutputBase) {

    if ($InputBase -lt 2) { throw "input base must be >= 2" }
    if ($OutputBase -lt 2) { throw "output base must be >= 2" }

    $sum = 0

    foreach($c in $Digits) {
        if ($c -ge $InputBase -or $c -lt 0) { throw "all digits must satisfy 0 <= digit < input base" }
        $sum = $sum * $InputBase + $c
    }

    if ($sum -eq 0) { return @(0) }

    $res = @()

    while ($sum -gt 0) {
        $digit = $sum % $OutputBase
        $res = ,$digit + $res
        $sum = [math]::floor($sum / $OutputBase)
    }

    $res
}
