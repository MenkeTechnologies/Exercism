class FlattenArray

  def self.flatten(ary)
    ary.map { _1.is_a?(Enumerable) ? flatten(_1) : [_1] }
       .reduce([]) { _1 + _2 }.reject { _1.nil? }

  end
end
