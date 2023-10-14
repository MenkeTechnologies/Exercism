Function Get-Acronym($Phrase) {
    ($Phrase.ToUpper() -replace "[-_]", " " -Split " " | ?{ $_.Length } | %{ $_[0] }) -join ""
}
