=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide

  def initialize(str)
    @h = {
      'A' => 0,
      'C' => 0,
      'G' => 0,
      'T' => 0
    }

    str.chars.each do
      throw ArgumentError if @h[_1].nil?
      @h[_1] += 1
    end

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
