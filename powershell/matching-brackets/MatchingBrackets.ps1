Function Test-MatchingBrackets($Text) {
    $brackets = @{
        '[' = ']'
        '{' = '}'
        '(' = ')'
    }
    $chars = $Text.ToCharArray()
    $stk = New-Object System.Collections.Stack
    foreach ($c in $chars) {
        $current = $c.ToString()
        if ($brackets.ContainsKey($current)) {
            $stk.Push($current)
        } elseif ($brackets.ContainsValue($current)){
            if ($stk.Count -eq 0 -or $brackets[$stk.Pop()] -ne $current) {
                return $false
            }
        }
    }
    $stk.Count -eq 0
}
