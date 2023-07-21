Function Add-Gigasecond() {
    [CmdletBinding()]
    Param(
        [DateTime]$Time
    )
    $Time.AddSeconds(1e9)
}
