struct Number
  private DICT = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  def to_roman
    remainder = to_i
    DICT.map do |sigil, value|
      quotient, remainder = remainder.divmod(value)
      sigil * quotient
    end.join
  end
end
