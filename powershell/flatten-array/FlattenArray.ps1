Function Invoke-FlattenArray($Array) {
    $lst = @()
    ForEach($n in $Array) {
        If ($n -eq $null) { Continue }
        ElseIf ($n -is [array]) {
            $flattened = Invoke-FlattenArray -Array $n
            If ($flattened -eq $null) { Continue }
            Else { $lst += $flattened }
        } Else { $lst += $n }
    }
    $lst
}

