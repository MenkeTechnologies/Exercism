class Series
    def initialize(@s : String)
        raise ArgumentError.new if @s =~ /\D/
    end
    def largest_product(length : Int32)
        raise ArgumentError.new if length < 0 || length > @s.size
        return 1 if @s.size == 0 || length == 0

        @s.chars.each_cons(length, true).map { |slice| UInt128.new(product(slice)) }.max

    end

	private def product(array : Array(Char))
        array.map{|c| c.to_i }.reduce { |acc, c| UInt128.new(acc * c) }
    end
end
