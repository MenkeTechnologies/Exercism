Function Invoke-RnaTranscription($Strand) {
    $dict = @{G = "C"; C = "G"; T = "A"; A = "U"}
    $res = @()
    foreach ($c in $Strand.ToCharArray()) {
        $res += $dict["$c"]
    }
    $res -join ""
}
