module Anagram exposing (detect)

sortlc = String.toLower >> String.toList >> List.sort >> String.fromList

detect target candidates =
  candidates
    |> List.filter (\s -> String.toLower s /= String.toLower target)
    |> List.filter (\s -> (sortlc s) == (sortlc target))
