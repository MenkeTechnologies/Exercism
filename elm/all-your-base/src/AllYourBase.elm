module AllYourBase exposing (rebase)

isInvalid inBase digits outBase = 
    inBase < 2 
    || outBase < 2
    || List.any (\d -> d < 0 || d >= inBase) digits
    || List.all (\d -> d == 0) digits
    
digitsToInt inBase digits = digits |> List.foldl (\n acc -> acc * inBase + n) 0
    
intToDigits acc base num =
    if num == 0 then acc
    else 
        let reminder = modBy base num
            quotient = num // base
        in intToDigits (reminder::acc) base quotient
        
rebase inBase digits outBase =
    if isInvalid inBase digits outBase then Nothing
    else digits
    |> digitsToInt inBase
    |> intToDigits [] outBase
    |> Just
