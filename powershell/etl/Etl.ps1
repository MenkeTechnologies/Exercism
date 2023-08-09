Function Invoke-Etl($Legacy) {
    $Res = @{}
    foreach ($Key in $Legacy.PSBase.Keys) {
        foreach ($Letter in $Legacy[$Key]) {
            $Res[$Letter.ToLower()] = $Key
        }
    }
    $Res
}
