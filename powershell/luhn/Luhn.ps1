Function Test-Luhn($Value) {
    $noWS = $Value.Replace(' ','').ToCharArray()
    [array]::Reverse($noWS)
    if($noWS.Length -lt 2){ return $false }
    $sum = 0
    for($i = 0; $i -lt $noWs.Length; $i++)
    {
        if($noWS[$i] -notmatch '\d'){return $false}
        $digit = [int]::Parse($noWS[$i])
        if ($i % 2 -eq 1)
        {
            $digit *= 2
            if($digit -gt 9){$digit -= 9}
        }
        $sum += $digit
    }
    $sum % 10 -eq 0
}

