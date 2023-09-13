Function Invoke-SecretHandshake($Number) {
    $ary = @()
    if ($Number -band 1) {$ary += "wink"}
    if ($Number -band 2) {$ary += "double blink"}
    if ($Number -band 4) {$ary += "close your eyes"}
    if ($Number -band 8) {$ary += "jump"}
    if ($Number -band 16) {[array]::Reverse($ary)}
    $ary
}
