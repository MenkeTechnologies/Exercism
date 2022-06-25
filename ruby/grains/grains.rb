class Grains

  def self.square(i)

    throw ArgumentError if i < 1 || i > 64
    2 ** (i - 1)
  end

  def self.total
    (1..64).map { square _1 }.sum

  end
end
