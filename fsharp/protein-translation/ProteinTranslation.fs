module ProteinTranslation
let mapping =
    function
    | "AUG"                         -> "Methionine"
    | "UUU" | "UUC"                 -> "Phenylalanine"
    | "UUA" | "UUG"                 -> "Leucine"
    | "UCU" | "UCC" | "UCA" | "UCG" -> "Serine"
    | "UAU" | "UAC"                 -> "Tyrosine"
    | "UGU" | "UGC"                 -> "Cysteine"
    | "UGG"                         -> "Tryptophan"
    | "UAA" | "UAG" | "UGA"         -> "STOP"
    | codon                             -> failwith $"Unknown codon {codon}"
    
let proteins s =
    s
    |> Seq.chunkBySize 3
    |> Seq.map (System.String >> mapping)
    |> Seq.takeWhile ((<>) "STOP")
    |> Seq.toList
