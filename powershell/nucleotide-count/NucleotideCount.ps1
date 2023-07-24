Function Get-NucleotideCount($Strand) {
    $res = @{ 'A' = 0; 'C' = 0; 'G' = 0; 'T' = 0 }
    if ($Strand -ne "") {
        foreach ($c in $Strand.ToCharArray()) {
            if($res.ContainsKey("$c") -ne $true){ throw "Invalid nucleotide in strand"}
            $res["$c"] += 1
        }
    }
    $res
}

