module IsbnVerifier

open System.Text.RegularExpressions

let private hasValidCharacters isbn = Regex.IsMatch(isbn, @"^\d{9}[\dX]$")

let private digitToValue index digit =
    let indexFactor = index + 1
    match digit with
    | 'X' -> 10 * indexFactor
    | _ -> (int digit - int '0') * indexFactor

let private checksum isbn =
    isbn
    |> Seq.rev
    |> Seq.mapi digitToValue
    |> Seq.sum

let isValid (isbn: string) =
    let normalizedIsbn = isbn.Replace("-", "")
    hasValidCharacters normalizedIsbn && checksum normalizedIsbn % 11 = 0
