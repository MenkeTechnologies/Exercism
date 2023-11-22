Function Get-LargestSeriesProduct($Digits, $Span) {

    $cnt = $Digits.Length

    if ($cnt -lt $Span) { throw "span must be smaller than string length" }
    if ($Span -lt 0) { throw "span must not be negative" }
    if ($Digits -match '\D') { throw "digits input must only contain digits" }

    $max = 0

    for ($i = 0; $i -le $cnt - $Span; ++$i) {
        $product = 1
        foreach ($digit in $Digits.Substring($i, $Span).toCharArray()) {
            $product *= [int]::Parse($digit)
        }
        if ($product -gt $max) {
            $max = $product
        }
    }
    $max
}
