class Queen
  protected getter row, column
  def initialize(@row : Int8, @column : Int8)
    raise ArgumentError.new unless (0..7).includes? @row
    raise ArgumentError.new unless (0..7).includes? @column
  end
  def can_attack?(other : Queen) : Bool
      dy = (row - other.row).abs
      dx = (column - other.column).abs
      dx == 0 || dy == 0 || dx == dy
  end
end
