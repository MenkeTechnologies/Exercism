Function Get-PhoneNumber($Number, [switch]$Pretty) {
    if ($Number -match '[a-zA-Z]') {
        throw 'Letters not permitted'
    }
    if ($Number -match '[,:;]') {
        throw 'Punctuations not permitted'
    }
    $Number = $Number -replace '\D', ''
    if ($Number.Length -lt 10) {
        throw "Number can't be fewer than 10 digits"
    }
    if ($Number.Length -eq 11 -and $Number[0] -ne '1') {
        throw '11 digits must start with 1'
    }
    if ($Number.Length -gt 11) {
        throw "Number can't be more than 11 digits"
    }
    if ($Number.Length -eq 11 -and $Number[0] -eq '1') {
        $Number = $Number.Substring(1)
    }
    if ($Number[0] -eq '0' -or $Number[0] -eq '1') {
        throw "Area code can't start with " + $Number[0]
    }
    if ($Number[3] -eq '0' -or $Number[3] -eq '1') {
        throw "Exchange code can't start with " + $Number[3]
    }
    if ($Pretty) {
        $Number = $Number.Insert(0, '(').Insert(4, ')-').Insert(9, '-')
    }
    $Number
}
