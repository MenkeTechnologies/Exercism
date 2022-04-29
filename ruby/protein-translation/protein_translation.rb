class InvalidCodonError < StandardError
end

class Translation

  CODONS = {
    %w(AUG) => 'Methionine',
    %w(UUU UUC) => 'Phenylalanine',
    %w(UUA UUG) => 'Leucine',
    %w(UCU UCC UCA UCG) => 'Serine',
    %w(UAU UAC) => 'Tyrosine',
    %w(UGU UGC) => 'Cysteine',
    %w(UGG) => 'Tryptophan',
    %w(UAA UAG UGA) => 'STOP'
  }.freeze

  def self.of_codon(codon)
    CODONS[codon] || (raise InvalidCodonError)
  end

  def self.of_rna(strand)
    strand.chars.slice(3)
          .map{CODONS[_1]}
          .take_while {_1 != "STOP" }
    
  end
    

  end
