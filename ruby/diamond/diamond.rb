# frozen_string_literal: true

class Diamond
  def self.make_diamond(letter)
    letters = ('A'..'Z').to_a

    limit = letters.index(letter)

    row_rng = (0..limit).to_a + (0..limit - 1).to_a.reverse
    col_rng = (0..limit).to_a.reverse + (1..limit).to_a

    row_rng.reduce('') do |acr, r|
      acr + col_rng.reduce('') do |acc, c|
        acc + (r == c ? (letters[c]).to_s : ' ')
      end + "\n"
    end
  end
end
