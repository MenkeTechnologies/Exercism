module.exports = class
  @translate: (codon) ->
    switch codon
      when 'AUG' then 'Methionine'
      when 'UUU', 'UUC' then 'Phenylalanine'
      when 'UUA', 'UUG' then 'Leucine'
      when 'UCU', 'UCC', 'UCA', 'UCG' then 'Serine'
      when 'UAU', 'UAC' then 'Tyrosine'
      when 'UGU', 'UGC' then 'Cysteine'
      when 'UGG' then 'Tryptophan'
      when 'UAA', 'UAG', 'UGA' then 'STOP'
      else throw new Error('Invalid codon')
      
  @proteins: (strand) ->
    res = []
    for codon from @codons(strand)
      protein = @translate(codon)
      if protein == 'STOP'
        break
      res.push(protein)
    res
  @codons: (strand) ->
    i = 0
    while i < strand.length
      yield strand.substr(i, 3)
      i += 3
