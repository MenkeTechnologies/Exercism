module TwoFer

let twoFer (input: string option): string =
    $"""One for {defaultArg input "you"}, one for me."""
