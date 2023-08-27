class Darts
  def initialize (x, y)
    @x = x
    @y = y
    @dist = ( @x * @x + @y * @y ) ** 0.5
  end

  def score
    @dist > 10 ? 0 : @dist > 5 ? 1 : @dist > 1 ? 5 : 10
  end
end
