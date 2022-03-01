class ListOps
  def self.arrays(ary)
    ary.reduce(0) { _1 + 1 }

  end

  def self.reverser(ary)
    ary.reverse
  end

  def self.concatter(*ary)
    ary.flatten
  end

  def self.mapper(ary)
    ary.map { _1 + 1 }
  end

  def self.sum_reducer(ary)
    ary.reduce(0) { _1 + _2 }
  end

  def self.factorial_reducer(ary)
    ary.reduce(1) { _1 * _2 }
  end

  def self.filterer(ary, &block)
    ary.filter { block.call _1 }
  end
end
