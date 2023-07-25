Function Invoke-Panagram($Sentence) {
    $alphabet = "abcdefghijklmnopqrstuvwxyz";
    $lc = $Sentence.ToLower()
    foreach ($c in $alphabet.ToCharArray()) {
        if (!$lc.Contains("$c")) { return $false; }
    }
    return $true;
}
