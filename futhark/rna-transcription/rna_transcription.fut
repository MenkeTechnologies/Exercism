def to_rna = map \(c:u8) -> match c case 'G' -> 'C' case 'C' -> 'G' case 'T' -> 'A' case 'A' -> 'U' case _ -> c
