class Integer
  @roman_hash = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
                  100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
                  10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
                  1 => 'I' }

  def self.letter_to_val
    @roman_hash.invert
  end

  def to_roman

    num = self
    @roman_hash.inject "" do |acc, (n, s)|
      acc <<= s * (num / n)
      num %= n
      acc
    end
  end

end

def from_roman(s)
  s.scan(/(C(?:M|D|)|M|D|X(?:C|L|)|C|L|I(?:X|V|)|V)/).map { Integer.letter_to_val[_1.first] }.sum
end

puts from_roman("MCMXI")
