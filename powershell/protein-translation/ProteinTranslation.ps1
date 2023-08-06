$Codons = @{
    "AUG" = "Methionine";
    "UUU" = "Phenylalanine";
    "UUC" = "Phenylalanine";
    "UUA" = "Leucine";
    "UUG" = "Leucine";
    "UCU" = "Serine";
    "UCC" = "Serine";
    "UCA" = "Serine";
    "UCG" = "Serine";
    "UAU" = "Tyrosine";
    "UAC" = "Tyrosine";
    "UGU" = "Cysteine";
    "UGC" = "Cysteine";
    "UGG" = "Tryptophan";
    "UAA" = "STOP";
    "UAG" = "STOP";
    "UGA" = "STOP";
}
Function Invoke-ProteinTranslation($Strand) {
    $protein = @()
    :StrandLoop for ($index = 0; $index -lt $Strand.Length; $index += 3) {
        if ($index + 3 -gt $Strand.Length ) { throw "error: Invalid codon" }
        $codon = $Strand.Substring($index, 3);
        if ($codons.containsKey($codon)) {
            if ($codons[$codon] -eq "STOP") { break; }
            $protein += $codons[$codon]
        } else { throw "error: Invalid codon" }
    }
    return $protein
}
