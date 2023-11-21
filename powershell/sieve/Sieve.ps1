Function Invoke-Sieve($Limit) {
    $lst = 0..$Limit
    $lst[1] = 0
    for($i = 2; $i -le [Math]::floor([Math]::sqrt($Limit)) ; ++$i) {
        if($lst[$i]) {
            for($j = $i * 2; $j -le $Limit ; $j += $i) {
                $lst[$j] = 0
            }
        }
    }
    $lst | ? { $_ }
}
