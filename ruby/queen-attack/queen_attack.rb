=begin
Write your code for the 'Queen Attack' exercise in this file. Make the tests in
`queen_attack_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/queen-attack` directory.
=end

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
