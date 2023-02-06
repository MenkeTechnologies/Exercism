module NucleotideCount
  def self.nucleotide_counts(s : String)
    raise ArgumentError.new "Invalid nucleotide in strand" if s !~ /^[ACGT]*$/
    s.each_char.reduce({'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}) {|acc,c| acc[c] += 1; acc}
  end
end

