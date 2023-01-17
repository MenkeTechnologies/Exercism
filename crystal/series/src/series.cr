class Series
  def self.slices(s, len)
    raise ArgumentError.new if len < 1 || len > s.size || s.empty?
    s.chars.each.cons(len).map(&.join).to_a
  end
end
