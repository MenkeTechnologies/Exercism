class Queens

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black

    (white + black).each { |i|
      raise ArgumentError if i.negative? || i > 7
    }

    @white = white
    @black = black

  end

  def attack?
    dx = (@white[0] - @black[0]).abs
    dy = (@white[1] - @black[1]).abs

    dx.zero? || dy.zero? || dx == dy

  end
end
