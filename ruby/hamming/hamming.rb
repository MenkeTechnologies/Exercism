class Hamming
  def self.compute(s1, s2)
    raise ArgumentError if s1.size != s2.size
    (0..s1.size - 1).filter { s1[_1] != s2[_1] }.size
  end
end
