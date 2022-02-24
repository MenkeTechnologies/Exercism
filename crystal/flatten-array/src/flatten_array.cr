module FlattenArray

  def self.flatten(ary)
    ary.reduce([] of Int32?) {|acc,n|
      n.is_a?(Enumerable) ? acc + flatten(n) : acc << n
    }.compact

  end
end
