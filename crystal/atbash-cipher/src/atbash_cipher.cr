module AtbashCipher
  ENC = ("a".."z").to_a.zip(("a".."z").to_a.reverse).to_h
  DEC = ("a".."z").to_a.reverse.to_a.zip(("a".."z").to_a).to_h

  def self.common(s, m)
    s.downcase.scan(/[0-9a-z]/).map { |c| m.fetch(c[0], c[0]) }.join
  end

  def self.encode(s)
    common(s, ENC).scan(/.{1,5}/).map {|c| c[0]}.join(" ")
  end

  def self.decode(s)
    common(s, DEC)
  end
end
