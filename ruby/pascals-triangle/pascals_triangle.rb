class Triangle

  def initialize(n)
    @n = n
  end

  def rows
    (2..@n).reduce([[1]]) do |acc, _|
      acc << ([1] + acc.last[0..-2].each_with_index.map { _1 + acc.last[_2 + 1] } + [1])
    end
  end

end
