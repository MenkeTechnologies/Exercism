$Colors = [ordered]@{
    black = 0
    brown = 1
    red = 2
    orange = 3
    yellow = 4
    green = 5
    blue = 6
    violet = 7
    grey = 8
    white = 9
}
Function Get-ColorCode {
    [CmdletBinding()] Param([string] $Color)
    $Colors[$Color]
}
Function Get-Colors() {
    $Colors.Keys
}
