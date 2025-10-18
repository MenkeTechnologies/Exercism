Function Get-LineUp() {
    [CmdletBinding()]
    Param(
        [string]$Name,
        [int]$Number
    )
    switch([string]$number){
        {$_ -match "1[123]$"} { $post = "th"; break }
        {$_ -match "1$"} { $post = "st" }
        {$_ -match "2$"} { $post = "nd" }
        {$_ -match "3$"} { $post = "rd" }
        default { $post = "th" }
    }
    "$name, you are the $number$post customer we serve today. Thank you!"
}
