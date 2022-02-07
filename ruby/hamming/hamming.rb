class Hamming
  def self.compute(s1, s2)
    raise ArgumentError if s1.size != s2.size
    (0..s1.size - 1).reduce(0) { s1[_2] != s2[_2] ? _1 + 1 : _1 }
  end
end
