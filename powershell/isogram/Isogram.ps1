Function Invoke-Isogram($Phrase) {
    $Phrase -notmatch '([a-zA-Z]).*\1'
}

