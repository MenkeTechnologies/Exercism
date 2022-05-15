module Pangram

let isPangram (input: string): bool =
    Seq.forall (fun (c: char) -> input.ToLower().Contains(c)) ['a'..'z']
