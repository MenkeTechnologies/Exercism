class Complement

  RNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna)

    dna.chars.map { RNA_MAP[_1] }.join

  end
end
