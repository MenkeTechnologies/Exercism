module Hamming

    def self.distance(left, right)
        raise ArgumentError.new("size must be equal") if left.size != right.size
        left.chars.zip(right.chars).count {|a, b| a != b }
    end

end
