class Series

  def initialize(s)
    @s = s
  end

  def slices(n)
    raise ArgumentError if n > @s.size
    @s.chars.each_cons(n).map(&:join)
  end
end
