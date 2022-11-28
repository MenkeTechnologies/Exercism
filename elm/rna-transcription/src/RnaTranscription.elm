module RnaTranscription exposing (toRNA)

validate dna = if dna |> String.contains "X" then
        Err "Invalid input"
    else
        Ok dna

convert c = case c of
    'C' -> 'G'
    'G' -> 'C'
    'A' -> 'U'
    'T' -> 'A'
    _ -> 'X'

toRNA = String.map convert >> validate
