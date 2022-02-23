class Array(T)
  def keep(&c : T -> Bool)
    reduce(Array(T).new){|acc, n| acc << n if c.call(n); acc}
  end

  def discard(&c : T -> Bool)
    keep{ |e| !c.call(e)}
  end
end
