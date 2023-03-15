local codon_pairs = {
  AUG = 'Methionine',
  UUU = 'Phenylalanine',
  UUC = 'Phenylalanine',
  UUA = 'Leucine',
  UUG = 'Leucine',
  UCU = 'Serine',
  UCC = 'Serine',
  UCA = 'Serine',
  UCG = 'Serine',
  UAU = 'Tyrosine',
  UAC = 'Tyrosine',
  UGU = 'Cysteine',
  UGC = 'Cysteine',
  UGG = 'Tryptophan',
  UAA = 'STOP',
  UAG = 'STOP',
  UGA = 'STOP',
}
local function codon(candidate)
  return (codon_pairs[candidate] or assert(false, 'unknown codon'))
end
return{
  codon = codon,
  rna_strand = function (sequence)
  local protein = {}
  for i=1, #sequence, 3 do
    local translated = codon(sequence:sub(i, i+2))
    if translated == 'STOP' then break end
    table.insert(protein, translated)
  end
  return protein
end
}
