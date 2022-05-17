module GuessingGame

let private target = 42;

let reply (guess: int): string =
    match guess - target with
    | 0 -> "Correct"
    | n when abs n = 1 -> "So close"
    | n when n <= -2 -> "Too low"
    | _ -> "Too high"
