module IsbnVerifier
  def self.valid?(str)
    str !~ /^\d-?\d{3}-?\d{5}-?[\dX]$/ ? false : str.scan(/\w/).map{|c|c[0]}.reverse.each_with_index.map { |c, i| c == "X" ? 10 : c.to_i * (i + 1) }.sum % 11 == 0
  end
end
