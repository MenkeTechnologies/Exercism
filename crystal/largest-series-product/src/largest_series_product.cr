class Series
    def initialize(@s : String)
    end
    def largest_product(length : Int32)
		raise ArgumentError.new if length < 0 || length > @s.size
		return 1 if @s.size == 0 || length == 0

        @s.chars.each_cons(length, true).map { |slice| UInt128.new(product(slice)) }.max

    end

	private def product(array : Array(Char))
        array.reduce(1) { |acc, c| UInt128.new(acc * c.to_i) }
    end
end
