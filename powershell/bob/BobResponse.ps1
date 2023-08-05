Function Get-BobResponse($HeyBob) {
    $noWS = $HeyBob.Trim().replace("`t","").replace(" ","")
    if ([string]::IsNullOrEmpty($noWs)){ return "Fine. Be that way!" }
    if ($noWS -cnotmatch '[a-z]' -and $noWS -cmatch '[A-Z]'){ 
        if ($noWS -cmatch '\?$') { return "Calm down, I know what I'm doing!" } else { return "Whoa, chill out!" }
    }
    if ($noWS -cmatch '\?$'){ return "Sure." }
    return "Whatever."
}
