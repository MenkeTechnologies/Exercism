function Get-WordCount ($Phrase){
    $letterApostrophes = $Phrase.ToLower() -replace "(?<!\w)'|'(?!\w)|(?!\w|').", ' '
    $result = @{}
    $letterApostrophes -split "[\s_]+" | Where-Object { $_ } |
    Group-Object -NoElement |
    ForEach-Object { $result[$_.Name] = $_.Count }
    $result
}
