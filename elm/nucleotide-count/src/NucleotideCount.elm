module NucleotideCount exposing (nucleotideCounts)


type alias NucleotideCounts =
    { a : Int
    , t : Int
    , c : Int
    , g : Int
    }


nucleotideCounts : String -> NucleotideCounts
nucleotideCounts s =
    String.foldl (\c acc ->
      case c of
        'A' -> { acc | a = acc.a + 1 }
        'T' -> { acc | t = acc.t + 1 }
        'C' -> { acc | c = acc.c + 1 }
        'G' -> { acc | g = acc.g + 1 }
        _ -> acc
      ) (NucleotideCounts 0 0 0 0) s
