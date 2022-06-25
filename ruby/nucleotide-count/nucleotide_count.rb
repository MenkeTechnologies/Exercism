class Nucleotide

  def initialize(str)
    throw ArgumentError if str !~ /^[AGCT]*$/
    @h = { 'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0 }
    @h.merge!(str.chars.group_by { _1 }.map { [_1, _2.size] }.to_h)
  end

  def count(nt)
    @h[nt]
  end

  def histogram
    @h
  end

  def self.from_dna(str)
    new(str)
  end

end
