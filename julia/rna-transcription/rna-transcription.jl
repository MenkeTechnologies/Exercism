function to_rna(dna::AbstractString)
 dict = Dict('A' => 'U', 'C' => 'G', 'G' => 'C', 'T' => 'A');
 try
   map(nucleotide->dict[nucleotide], dna)
 catch error
   throw(ErrorException("Invalid nucleotide"));
 end
end
