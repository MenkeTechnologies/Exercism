module SumOfMultiples
  def self.sum(factors : Array(Int), limit : Int)
    (1...limit).select { |n| factors.any? {|f| f != 0 && n % f == 0}}.sum
  end
end
