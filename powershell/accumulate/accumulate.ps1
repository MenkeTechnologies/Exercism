Function Get-Accumulation($List, $Func) {
    $res = @()
    foreach ($n in $List) {
        $res += &$Func($n)
    }
    $res
}
