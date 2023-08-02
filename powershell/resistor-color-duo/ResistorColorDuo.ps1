Function Get-ColorCode($Color) {
    @{
        'black' = 0
        'brown' = 1
        'red' = 2
        'orange' = 3
        'yellow' = 4
        'green' = 5
        'blue' = 6
        'violet' = 7
        'grey' = 8
        'white' = 9
    }[$Color]
}
Function Get-ColorCodeValue($Colors) {
    (Get-ColorCode -Color $Colors[0]) * 10 + (Get-ColorCode -Color $Colors[1])
}

