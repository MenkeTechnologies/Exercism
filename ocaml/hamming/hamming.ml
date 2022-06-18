open List

type nucleotide = A | C | G | T

let combine a b c = a + (if b = c then 0 else 1)

let hamming_distance alpha beta = match length alpha, length beta with
    | (x, y) when x = y -> Ok (fold_left2 combine 0 alpha beta)
    | (0, _) -> Error "left strand must not be empty"
    | (_, 0) -> Error "right strand must not be empty"
    | (_, _) -> Error "left and right strands must be of equal length"

