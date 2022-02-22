module Grains

  def self.square(n)
    raise ArgumentError.new if n <1 || n > 64
    2.to_u64 ** (n - 1)
  end


  def self.total
    (1..64).map{|n| square(n)}.sum
  end

end
