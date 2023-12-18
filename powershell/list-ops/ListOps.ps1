Function Invoke-Append($List1, $List2) {
    $r = $List1 + $List2
    $r
}
Function Invoke-Concatenate($Lists) {
    $r = @()
    foreach ($lst in $Lists){
        $r += $lst
    }
    $r
}
Function Invoke-Filter($List, $Predicate) {
    $r = @()
    foreach($n in $List){
        if ($Predicate.Invoke($n)){
            $r += $n
        }
    }
    $r
}
Function Get-Length($List) {
    $cnt = 0
    foreach ($n in $List){
        $cnt++
    }
    $cnt
}
Function Invoke-Map($List, $Function) {
    $r = @()
    foreach($n in $List){
        $r += $Function.Invoke($n)
    }
    $r
}
Function Invoke-Foldl($Function, $List, $Accumulator) {
    $r = $Accumulator
    foreach($n in $List){
        $r = &$Function -acc $r -e $n
    }
    $r
}
Function Invoke-Foldr($Function, $List, $Accumulator) {
    $c = (Get-Length $List) - 1
    $r = $Accumulator
    for($i=$c; $i -ge 0; $i--){
        $r = &$Function -e $List[$i] -acc $r
    }
    $r
}
Function Invoke-Reverse($List) {
    $r = @()
    $c = (Get-Length $List) - 1
    for($i=$c; $i -ge 0; $i--){
        if ($List[$i] -is [array]){
            $r += ,$List[$i]
        }
        else{
            $r += $List[$i]
        }
    }
    $r
}
