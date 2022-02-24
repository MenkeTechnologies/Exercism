module Luhn
  def self.valid?(s)

    s = s.gsub(/\s/, "")

    return false if s.size < 2 || s.chars.any? {|c| c.match?(/D/)}

    str.chars.reverse.map { |c| c.to_i }.each.with_index.map { |n, i|
      dbl = i.odd? ? n * n : n
      dbl -= dbl > 9 ? 9: 0
    }.sum % 10 == 0

  end
end
