# Please implement your solution to hamming in this file

module Hamming

    def self.distance(left, right)

        if left.size != right.size
            raise ArgumentError.new("size must be equal")
        end

        left.chars.zip(right.chars).count {|a,b| a != b }

    end

end
