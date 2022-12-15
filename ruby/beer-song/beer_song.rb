module BeerSong
  def self.verse(bottles)
    if bottles.zero?
      <<~TEXT
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      TEXT
    elsif bottles == 1
      <<~TEXT
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      TEXT
    else
      <<~TEXT
        #{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
        Take one down and pass it around, #{bottles - 1} bottle#{'s' if bottles > 2 } of beer on the wall.
      TEXT
    end
  end

  def self.recite(start, n)
    start.downto(start + 1 - n).map { verse(_1) }.join("\n")
  end

end
