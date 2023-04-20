module Diamond
  def self.rows(letter : Char) : Array(String)
    offset = letter - 'A'
    ary = (0..offset).map do |row|
      str = ('A' + row) + " " * row
      (str + str.reverse[1..]).center(offset * 2 + 1)
    end
    ary + ary.reverse[1..]
  end
end

