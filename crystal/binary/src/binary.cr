class Binary
  def self.to_decimal(s)
    raise ArgumentError.new if s.match(/[^01]/)

    s.chars.reduce(0) {|acc,n|
      acc *  2 + n.to_i
    }
  end
end
