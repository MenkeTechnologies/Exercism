module AllYourBase

let fromDecNumber outputBase number =
    let rec aux n digits =
        match n / outputBase, n % outputBase with
        | 0, modulus -> modulus :: digits
        | remainder, modulus -> aux remainder (modulus :: digits)
    aux number []

let rebase digits inputBase outputBase =
    if inputBase < 2 || outputBase < 2 || (digits |> List.exists (fun d -> d < 0 || d >= inputBase)) then
        None
    elif digits.IsEmpty then
        Some [ 0 ]
    else
        let sum = digits |> List.reduce (fun acc c -> acc * inputBase + c)

        sum |> fromDecNumber outputBase |> Some
