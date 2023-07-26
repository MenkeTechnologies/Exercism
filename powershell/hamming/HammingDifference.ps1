function Get-HammingDifference($strand1, $strand2) {
 
    if ($strand1.Length -ne $strand2.Length) {
        Throw "strands must be of equal length."
    }
    $hamming = 0
    0..$strand1.Length | % { if ($strand1[$_] -ne $strand2[$_]) { $hamming++ } }
    return $hamming
}

