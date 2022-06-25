class Anagram

  def initialize(str)

    @str = str.downcase
    @letters = @str.chars.sort

  end

  def match(ary)
    ary.filter { _1.downcase.chars.sort == @letters && @str != _1.downcase }
  end

end
