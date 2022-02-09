class IsbnVerifier
  def self.valid?(str)
    return false if str !~ /^\d-?\d{3}-?\d{5}-?[\dX]$/
    str.scan(/\w/).reverse.each_with_index.map { _1 == 'X' ? 10 : _1.to_i * (_2 + 1) }.sum % 11 == 0
  end
end
