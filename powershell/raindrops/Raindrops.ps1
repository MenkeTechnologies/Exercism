Function Get-Raindrops() {
    [CmdletBinding()]
    Param(
        [int]$Rain
    )
    if ($Rain % 3 -eq 0 ) { $sound += 'Pling'}
    if ($Rain % 5 -eq 0 ) { $sound += 'Plang'}
    if ($Rain % 7 -eq 0 ) { $sound += 'Plong'}

    if (!$sound) {
        Return $Rain
    } else {
        Return $sound
    }
}
