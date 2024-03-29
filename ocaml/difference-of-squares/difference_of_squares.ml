let rec range acc n =
    match n with
    0 -> acc |
    _ -> range (n::acc) (n - 1)

let sq n = n * n

let sum = List.fold_left (+) 0

let square_of_sum n =
    range [] n
    |> sum
    |> sq

let sum_of_squares n =
    range [] n
    |> List.map sq
    |> sum

let difference_of_squares n =
    square_of_sum n - sum_of_squares n
