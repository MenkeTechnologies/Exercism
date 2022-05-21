module NucleotideCount

let nucleotideCounts (strand: string): Option<Map<char, int>> =
    let init = [('A',0);('C',0);('G',0);('T',0)] |> Map.ofList
    if strand |> Seq.forall (fun c -> Seq.contains c "ATCG") then
        strand |> Seq.fold (fun acc n -> Map.add n (acc[n] + 1) acc) init
        |> Some
    else
        None
