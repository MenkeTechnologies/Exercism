Function Invoke-Diamond([char]$Letter) {
    $n = [int]$Letter - 64
    if ($n -eq 1) { return "A`n" }
    if ($n -gt 26) { $n -= 97 - 65 }
    $diamond = (1 .. $n + ($n - 1) .. 1) |% {
        $row = $_
        $c = [char]($row + 64)
        (($n .. 1 + 2 .. $n) |% { $_ -eq $row ? $c : " " }) -join ""
    }
    $diamond -join "`r`n"
}
