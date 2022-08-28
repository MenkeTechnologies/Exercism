function ISBN(s)
    digits = map(c -> '9' >= c >= '0' ? c-'0' : 10, filter(c -> isdigit(c) || c=='X', s) |>collect)

    length(digits) != 10 && throw(DomainError(s))

    any(==(10), digits[begin:end-1]) && throw(DomainError(s))

    summed = map(pair -> pair[1] * pair[2], digits |> reverse |> enumerate) |> sum
    summed % 11 != 0 && throw(DomainError(summed))
    digits
end
