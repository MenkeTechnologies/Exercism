Function Invoke-RotationalCipher($Text, $Shift) {
    $low  = "abcdefghijklmnopqrstuvwxyz"
    $high = $low.ToUpper()
    $res = ""
    foreach($c in $Text.ToCharArray() ) {
       if ($low.contains($c) ){
            $res += $low[($low.indexof($c) + $Shift) % 26]
       } elseif ($high.contains($c)) {
            $res += $high[($high.indexof($c) + $Shift) % 26]
       } else {
            $res += $c
       }
    }
    $res
}
