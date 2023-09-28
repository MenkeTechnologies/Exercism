Function Test-Isbn($Isbn) {
    $noWS = $Isbn.Replace(' ','').Replace('-', '').ToCharArray()
    if ($noWS -join "" -notmatch "^\d\d{3}\d{5}[\dX]$") {
        return $false
    }
    [array]::Reverse($noWS)
    $sum = 0
    if ($noWS[0] -eq "X"){
        $sum += 10
    } else {
        $sum += ([int]$noWS[0] - 48)
    }
    for ($i = 1 ; $i -le 9 ; $i++) {
        $sum += ($i + 1) * ([int]$noWS[$i] - 48)
    }
    $sum % 11 -eq 0
}
