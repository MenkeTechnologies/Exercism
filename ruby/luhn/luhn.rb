class Luhn
  def self.valid?(s)
    s.gsub! /\s/, ''
    s.size < 2 || s.chars.any? { _1.match? /\D/ } ? false :
      s.chars.reverse.map { _1.to_i }.each.with_index.map {
        dbl = _2.odd? ? _1 * 2 : _1
        dbl - (dbl > 9 ? 9 : 0)
      }.sum % 10 == 0
  end
end
