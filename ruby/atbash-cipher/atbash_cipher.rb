module Atbash
  ENC = ('a'..'z').to_a.zip(('a'..'z').to_a.reverse).to_h
  DEC = ('a'..'z').to_a.reverse.to_a.zip(('a'..'z').to_a).to_h

  def self.common(s, m)
    s.downcase.scan(/\w/).map { m[_1] || _1 }.join
  end

  def self.encode(s)
    common(s, ENC).scan(/.{1,5}/).join(" ")
  end

  def self.decode(s)
    common(s, DEC)
  end
end
