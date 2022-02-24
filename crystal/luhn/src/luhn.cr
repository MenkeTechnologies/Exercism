module Luhn
  def self.valid?(s)
    str = s.gsub(/\s/, "")
    str.size < 2 || str.chars.any? { |c| c.to_s !~ /\d/ } ? false :
    str.chars.reverse.each.with_index.map { |c, i|
      dbl = i.odd? ? c.to_i * 2 : c.to_i
      dbl - (dbl > 9 ? 9 : 0)
    }.sum % 10 == 0
  end
end
